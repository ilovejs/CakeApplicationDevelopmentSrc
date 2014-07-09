USE `cakeOneTwo`;
CREATE TABLE `books` (
    `id` int( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    `isbn` varchar( 10 ) NOT NULL ,
    `title` varchar( 127 ) NOT NULL ,
    `description` text NOT NULL ,
    `author_name` varchar( 127 ) NOT NULL
)