#!/usr/bin/env bash

mysql_config=$HOME/.my.cnf
mysql_config_old=$HOME/.my.cnf.old
bashrc=$HOME/.bashrc

MYSQL_CONNECTION="jdbc:mysql://localhost:3306/avengers?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
MYSQL_USERNAME="avengers"
MYSQL_PASSWORD="avengers"

function display_help_msg() {
    cat <<HELP

Description:

 flyaway.sh for local database

Usage:

  ./$0 : inflate local database
  ./$0 -h : display help message

Flags:

  -h | --help    : return this help message
 
HELP
    exit 0
}

function dump_mysql_config(){
    cat <<EOF >> $mysql_config
[client]
user=avengers
password=avengers
database=avengers
EOF
    echo "### proper mysql configuration saved at $mysql_config"
}

function inject_db_connectivity(){
    cat <<EOF >> $bashrc
export DB_CONNECTION="$MYSQL_CONNECTION"
export DB_USERNAME="$MYSQL_USERNAME"
export DB_PASSWORD="$MYSQL_PASSWORD"
EOF
    source $bashrc && echo "### database connectivity injected";
}

function inflate_database(){
    mysql -e "source ./sql-scripts/flyway.sql"
    echo "### local database inflated, performing sanity check...[if you do not see iron man info below, please contact Dr. Banner]"
    mysql -e "SELECT * FROM user;"
}

function start_mysql_server(){
    echo "### mysql cli installation confirmed: `mysql --version`"
    mysql_server_status=`mysql.server status`
    if [[ $mysql_server_status == *"SUCCESS!"* ]]; then
        echo "### local database already started"
    elif [[ $mysql_server_status == *"ERROR!"* ]]; then
        echo "### local database not started, starting server in $OS_ARCHITECTURE..."
        if [[ $OS_ARCHITECTURE == "Darwin_x86_64" ]]; then
            mysql.server start
        elif [[ $OS_ARCHITECTURE == "Linux_x86_64" ]]; then 
            systemctl start mysql
        else
            echo "### Your OS ($OS_ARCHITECTURE) sucks, try Mac or Ubuntu!"
        fi
    fi
    echo "### inflating local database..."
    inflate_database;
}

for var in "$@"; do
    if [ $var == "-h" -o $var == "--help" ]; then
        display_help_msg;
    else
        echo "program error, option not recognized: $var"; exit 1;
    fi
done

check=0;
if [ -f $mysql_config ]; then
    echo "### mysql config file $mysql_config detected, verifying content..."
    while read -r line; do
        if [ $check -eq 4 ]; then break; fi
        if [[ $line == "# "* ]]; then continue; fi

        if [[ $line == "[client]" ]]; then
            check=$(($check+1)); continue;
        elif [[ $line == "user=avengers" ]]; then 
            check=$(($check+1)); continue;
        elif [[ $line == "password=avengers" ]]; then 
            check=$(($check+1)); continue;
        elif [[ $line == "database=avengers" ]]; then 
            check=$(($check+1)); continue;
        fi
    done < $mysql_config

    if [ $check -eq 4 ]; then
        echo "### mysql config correct, mysql configuration step skipped";
    else
        echo "### mysql config file exists but configuration incorrect, caching old configuration at $mysql_config_old"
        mv $mysql_config $mysql_config_old
        dump_mysql_config
    fi
else
    echo "### mysql config file does not exist, setting proper configuration..."
    dump_mysql_config
fi

check=0;
if [ -f $bashrc ]; then
    echo "### bashrc $bashrc detected, verifying content..."
    while read -r line; do
        if [ $check -eq 3 ]; then break; fi
        if [[ $line == "# "* ]]; then continue; fi

        if [[ $line == "export DB_CONNECTION=\"$MYSQL_CONNECTION\"" ]]; then
            check=$(($check+1)); continue;
        elif [[ $line == "export DB_USERNAME=\"$MYSQL_USERNAME\"" ]]; then 
            check=$(($check+1)); continue;
        elif [[ $line == "export DB_PASSWORD=\"$MYSQL_PASSWORD\"" ]]; then 
            check=$(($check+1)); continue;
        fi
    done < $bashrc

    if [ $check -eq 3 ]; then
        echo "### database connectivity configuration correct, database connectivity injection step skipped";
        source $bashrc
    else
        echo "### $bashrc exists but configuration incorrect, injecting proper database connectivity..."
        inject_db_connectivity
    fi
else
    echo "### bashrc $bashrc does not exist, injecting proper database database connectivity..."
    inject_db_connectivity
fi

OS_ARCHITECTURE=`uname -s`_`uname -m`;
echo "### OS detected: $OS_ARCHITECTURE"
start_mysql_server || ( brew install mysql && start_mysql_server)
