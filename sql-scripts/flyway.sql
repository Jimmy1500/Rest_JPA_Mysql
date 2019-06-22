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

-- INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'CoffeeDrinker');
-- INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'DnDLover');

INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'board-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'carpentry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'dogs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'neota.moe@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'carpentry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'chocolate');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'shopping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'vintage');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'cosplay');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'mgmt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jacob.moore@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'cargill');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'chocolate');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'animal');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'andrew.sinning@daugherty.com'), 'rpgs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'cargill');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'technology');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'animal');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'jr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'james.ding@daugherty.com'), 'coffee');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'mgmt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nate.lubitz@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'lgbt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'shopping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'not-running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'mgmt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'sean.looney@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'board-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'dogs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'cosplay');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'animal');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'robert.jacobs@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'sleeping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'erik.granse@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ron.daugherty@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jan.daugherty@daugherty.com'), 'chocolate');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jan.daugherty@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jan.daugherty@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jan.daugherty@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jan.daugherty@daugherty.com'), 'cars');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'jan.daugherty@daugherty.com'), 'coffee');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'lgbt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'carpentry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'not-running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'technology');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'tom.gittemeier@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'board-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'mgmt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'brian.daun@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'sleeping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'shopping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'vintage');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'logan.staack@daugherty.com'), 'coffee');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'carla.brady@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'carla.brady@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'carla.brady@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'carla.brady@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'chandler.molbert@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'chandler.molbert@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'chandler.molbert@daugherty.com'), 'wizardry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'chandler.molbert@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'chandler.molbert@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'chandler.molbert@daugherty.com'), 'rpgs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'lgbt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'dogs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'technology');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alex.nugent@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'cargill');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'vintage');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'ryan.rampersad@daugherty.com'), 'animal');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'not-running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'rpgs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'pete.gaffney@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'dogs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'cars');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'dan.wonderful@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'sleeping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'cosplay');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'keyvan.pouyan@daugherty.com'), 'jr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'sleeping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'aaron.robertson@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'board-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'vintage');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'patrice.martineau@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'carpentry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'sleeping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'not-running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'animal');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'jr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'nardin.vahidiazar@daugherty.com'), 'coffee');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'vintage');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'cars');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'margaret.elkins@daugherty.com'), 'jr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'biking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'cars');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'megan.lahm@daugherty.com'), 'cosplay');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'rpgs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'jr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'mgmt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'roni.scott@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'board-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'alynie.walters@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'cargill');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'dogs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'wizardry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'biking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mia.Airhart@daugherty.com'), 'coffee');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'gamer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'shopping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'technology');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Seth.Adams@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'bby');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'cargill');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'lgbt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'wizardry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'technology');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'television');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Kyle.Rondeau@daugherty.com'), 'cars');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'slack');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'netflix');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Todd.Dale@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'carpentry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'chocolate');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'not-running');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'biking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'cosplay');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'mgmt');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Christopher.Meyer-Quarberg@daugherty.com'), 'coffee');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'board-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'sleeping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'cats');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'dogs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'dnd');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'wizardry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'hiking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'charity');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Victor.Barge@daugherty.com'), 'women-who-code');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'video-games');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'carpentry');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'harambe');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'hunting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'crafting');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'wicca');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'larping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'rpgs');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'sr-dev');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'beer');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Alex.Harms@daugherty.com'), 'low-hanging-fruit');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mark.Martin@daugherty.com'), 'shopping');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mark.Martin@daugherty.com'), 'mtg');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mark.Martin@daugherty.com'), 'survivalism');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mark.Martin@daugherty.com'), 'music');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Mark.Martin@daugherty.com'), 'vintage');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'sports');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'fishing');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'guns');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'cooking');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'cars');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'iot');
INSERT INTO tag (tag_id, user_id, tag_name) VALUES (uuid(), (SELECT user_id FROM user WHERE email = 'Brian.Krueger@daugherty.com'), 'women-who-code')