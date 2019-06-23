CREATE USER 'avengers'@'%' IDENTIFIED BY 'avengers';
GRANT ALL PRIVILEGES ON *.* TO 'avengers'@'%';

CREATE DATABASE IF NOT EXISTS avengers;
ALTER DATABASE avengers CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE avengers;

DROP TABLE IF EXISTS `tag`;
DROP TABLE IF EXISTS `user`;

CREATE TABLE IF NOT EXISTS `user` (
    `user_id` varchar(36) NOT NULL,
    `first_name` varchar(45) NOT NULL,
    `middle_name` varchar(45) DEFAULT NULL,
    `last_name` varchar(45) NOT NULL,
    `email` varchar(60) NOT NULL,
    `branch` varchar(45) DEFAULT NULL,
    `client` varchar(45) DEFAULT NULL,
    `client_role` varchar(45) DEFAULT NULL,
    `los_title` varchar(100) DEFAULT NULL,
    `consultant_title` varchar(45) DEFAULT NULL,
    `photo_name` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    UNIQUE KEY `email_UNIQUE` (`email`)
);

INSERT INTO user (user_id, first_name, middle_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Anthony', 'IronMan', 'Stark', 'tony.stark@starkindusties.net', 'MSP', 'Stark Industries', 'Tech Vendor', 'Chief Scientist', 'Boss Man', 'Photo_Tony_Stark');

CREATE TABLE IF NOT EXISTS `tag` (
    `tag_id` varchar(36) NOT NULL,
    `user_id` varchar(36) NOT NULL,
    `tag_name` varchar(45) NOT NULL,
    `topic_type` varchar(45) NOT NULL,
    `topic_group` varchar(45) NOT NULL,
    PRIMARY KEY (`tag_id`),
    FOREIGN KEY `user_id_FK` (`user_id`) REFERENCES user (user_id)
);

INSERT INTO tag (tag_id, user_id, tag_name, topic_type, topic_group) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tony.stark@starkindusties.net'), 'CoffeeDrinker', 'Interests', 'Food & Drink');
