USE `cakeOneTwo`;
CREATE TABLE `books` (
    `id` int( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    `isbn` varchar( 10 ) NOT NULL ,
    `title` varchar( 127 ) NOT NULL ,
    `description` text NOT NULL ,
    `author_name` varchar( 127 ) NOT NULL
);






CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `authod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `tutorials`
ADD PRIMARY KEY (`id`),
ADD KEY `authod_id` (`authod_id`);

ALTER TABLE `tutorials`
ADD CONSTRAINT `fk_author_tutorial` FOREIGN KEY (`authod_id`)
REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

