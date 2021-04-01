create table if not exists books(
	book_id integer unsigned primary key auto_increment,
	author_id integer unsigned,
	title varchar(100) not null,
    year integer unsigned not null default 1900,
    language varchar(2) not null default 'es' comment 'ISO 639-1 language',
    cover_URL varchar(500),
    price DOUBLE(6,2) NOT NULL DEFAULT 10.00,
    sellable tinyint(1) default 1,
    copies integer not null default(1),
    description text
);

create table if not exists authors (
	author_id integer unsigned primary key auto_increment,
    name varchar(100) not null,
    nationality varchar(3)
);

create table clients(
client_id integer unsigned primary key auto_increment,
`name` varchar(50) not null,
email varchar(100) not null unique,
birthdate datetime,
gender enum('M','F','ND') NOT NULL,
`active` tinyint(1) not null default 1,
created_at timestamp not null default current_timestamp,
updated_at timestamp not null default current_timestamp on update current_timestamp
);