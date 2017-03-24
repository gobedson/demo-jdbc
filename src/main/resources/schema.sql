DROP TABLE IF EXISTS author;

CREATE TABLE `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT primary key,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS post;

CREATE TABLE `post` (
  `id` bigint NOT NULL AUTO_INCREMENT primary key,
  `body` varchar(4000),
  `posted_on` timestamp,
  `slug` varchar(255) DEFAULT NULL,
  `teaser` varchar(4000),
  `title` varchar(255) DEFAULT NULL,
  `author_id` bigint DEFAULT NULL
);

