CREATE USER 'avengers'@'%' IDENTIFIED BY 'avengers';
GRANT ALL PRIVILEGES ON *.* TO 'avengers'@'%';
CREATE DATABASE IF NOT EXISTS avengers;
ALTER DATABASE avengers CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE avengers;

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
    VALUES (uuid(), 'Neota', 'Black Widow', 'Moe', 'neota.moe@daugherty.com', 'MSP', 'Metronic', 'Engineer', 'Software Engineer I', 'Consultant', 'photo1');
INSERT INTO user (user_id, first_name, middle_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Jacob', 'Hawkeye', 'Moore', 'jacob.moore@daugherty.com', 'MSP', 'BestBuy', 'Engineer', 'Software Engineer I', 'Associate Consultant', 'photo2');
INSERT INTO user (user_id, first_name, middle_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Andy', 'CoffeeMan', 'Sinning', 'andrew.sinning@daugherty.com', 'MSP', 'BestBuy', 'Senior Engineer', 'Software Engineer III', 'Senior Consultant', 'photo3');
INSERT INTO user (user_id, first_name, middle_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'James', 'Hulk', 'Ding', 'james.ding@daugherty.com', 'MSP', 'Cargill', 'Senior Engineer', 'Software Engineer III', 'Senior Consultant', 'photo4');
INSERT INTO user (user_id, first_name, middle_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Nate', 'Groot', 'Lubitz', 'nate.lubitz@daugherty.com', 'MSP', 'Cargill', 'Engineer', 'Software Engineer I', 'Consultant', 'photo5');
INSERT INTO user (user_id, first_name, middle_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Sean', 'Vision', 'Looney', 'sean.looney@daugherty.com', 'MSP', 'Cargill', 'Senior Scrum Master', 'Project Manager I', 'Consultant', 'photo6');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Rob', 'Jacobs', 'robert.jacobs@daugherty.com', 'MSP', 'Best Buy', 'Architect', 'Solution Architect', 'Senior Principal Consultant', 'photo7');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Erik', 'Granse', 'erik.granse@daugherty.com', 'MSP', 'Express Scripts', 'Architect', 'Solution Architect', 'Senior Principal Consultant', 'photo8');
INSERT INTO user (user_id, first_name, last_name, email, branch, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Ron', 'Daugherty', 'ron.daugherty@daugherty.com', 'CRP', 'President and CEO', 'President and CEO', 'photo9');
INSERT INTO user (user_id, first_name, last_name, email, branch, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Jan', 'Daugherty', 'jan.daugherty@daugherty.com', 'CRP', 'Executive Vice President', 'Executive Vice President', 'photo10');
INSERT INTO user (user_id, first_name, last_name, email, branch, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Tom', 'Gittemeier', 'tom.gittemeier@daugherty.com', 'STL', 'Software Architecture & Engineering Practice Lead', 'Manager', 'photo11');        
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Brian', 'Daun', 'brian.daun@daugherty.com', 'MSP', 'Best Buy', 'Architect', 'Solution Architect', 'Senior Principal Consultant', 'photo12');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Logan', 'Staack', 'logan.staack@daugherty.com', 'MSP', 'DU','Engineer', 'Software Engineer I', 'Associate Consultant', 'photo13');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Carla', 'Brady', 'carla.brady@daugherty.com', 'MSP', 'Best Buy', 'Engineer', 'Software Engineer I', 'Associate Consultant', 'photo14');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Chandler', 'Molbert', 'chandler.molbert@daugherty.com', 'MSP', 'Cargill', 'Engineer', 'Software Engineer II', 'Consultant', 'photo15');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Alex', 'Nugent', 'alex.nugent@daugherty.com', 'MSP', 'Express Scripts', 'Engineer', 'Software Engineer II', 'Consultant', 'photo16');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Ryan', 'Rampersad', 'ryan.rampersad@daugherty.com', 'MSP', 'Cargill', 'Engineer', 'Software Engineer III', 'Consultant', 'photo17');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Pete', 'Gaffney', 'pete.gaffney@daugherty.com', 'MSP', 'Cargill', 'Engineer', 'Software Engineer III', 'Principal Consultant', 'photo18');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Dan', 'Wonderful', 'dan.wonderful@daugherty.com', 'MSP', 'Walgreens', 'Engineer', 'Software Engineer II', 'Consultant', 'photo19');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Keyvan', 'Pouyan', 'keyvan.pouyan@daugherty.com', 'MSP', 'Walgreens', 'Engineer', 'Software Engineer II', 'Consultant', 'photo20');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Aaron', 'Robertson', 'aaron.robertson@daugherty.com', 'MSP', 'Walgreens', 'Engineer', 'Software Engineer III', 'Senior Consultant', 'photo21');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Patrice', 'Martineau', 'patrice.martineau@daugherty.com', 'MSP', 'Best Buy', 'Engineer', 'Software Engineer I', 'Associate Consultant', 'photo22');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Nardin', 'Vahidi Azar', 'nardin.vahidiazar@daugherty.com', 'MSP', 'Best Buy', 'Engineer', 'Software Engineer I', 'Associate Consultant', 'photo23');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Margaret', 'Elkins', 'margaret.elkins@daugherty.com', 'MSP', 'Best Buy', 'Engineer', 'Software Engineer II', 'Consultant', 'photo24');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Megan', 'Lahm', 'megan.lahm@daugherty.com', 'MSP', 'DU','Engineer', 'Software Engineer I', 'Associate Consultant', 'photo25');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Roni', 'Scott', 'roni.scott@daugherty.com', 'MSP', 'DU','Engineer', 'Software Engineer I', 'Associate Consultant', 'photo26');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Alynie', 'Walters', 'alynie.walters@daugherty.com', 'MSP', 'DU', 'Engineer', 'Software Engineer I', 'Associate Consultant', 'photo27');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Mia', 'Airhart', 'Mia.Airhart@daugherty.com', 'MSP','Cargill', 'Product Owner', 'Business Analyst II', 'Consultant', 'photo28');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Seth', 'Adams', 'Seth.Adams@daugherty.com', 'MSP','Cargill', 'Senior Scrum Master', 'Senior Scrum Master', 'Consultant', 'photo29');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Kyle', 'Rondeau', 'Kyle.Rondeau@daugherty.com', 'MSP','Cargill', 'Senior Scrum Master', 'Senior Scrum Master', 'Senior Consultant', 'photo30');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, consultant_title, photo_name) 
    VALUES (uuid(), 'Todd', 'Dale', 'Todd.Dale@daugherty.com', 'MSP','Cargill', 'Client Service Lead', 'Senior Principal Consultant', 'photo31');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Chris', 'Meyers-Quarberg', 'Christopher.Meyer-Quarberg@daugherty.com', 'MSP','Cargill', 'Senior Scrum Master', 'Senior Scrum Master', 'Senior Consultant', 'photo32');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Victor', 'Barge', 'Victor.Barge@daugherty.com', 'MSP','Cargill', 'Program Manager', 'Program Manager', 'Principal Consultant', 'photo33');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Alex', 'Harms', 'Alex.Harms@daugherty.com', 'MSP','Cargill', 'Project Manager', 'Senior Scrum Master', 'Senior Consultant', 'photo34');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, client_role, los_title, consultant_title, photo_name) 
    VALUES (uuid(), 'Mark', 'Martin', 'Mark.Martin@daugherty.com', 'MSP','Cargill', 'Project Manager', 'Senior Project Manager', 'Senior Consultant', 'photo35');
INSERT INTO user (user_id, first_name, last_name, email, branch, client, consultant_title, photo_name) 
    VALUES (uuid(), 'Brian', 'Krueger', 'Brian.Krueger@daugherty.com', 'MSP','Augeo', 'Principal Consultant', 'photo36');


DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
    `tag_id` varchar(36) NOT NULL,
    `user_id` varchar(36) NOT NULL,
    `tag_name` varchar(45) NOT NULL,
    PRIMARY KEY (`tag_id`),
    FOREIGN KEY `user_id_FK` (`user_id`) REFERENCES user (user_id)
);

INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'CoffeeDrinker');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'DnDLover');