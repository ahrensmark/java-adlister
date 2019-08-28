use adlister_db;

# truncate ads;
 drop TABLE users;

CREATE TABLE users (
           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
           username varchar(100) not null,
           email VARCHAR(150) NOT NULL,
           password varchar(150),
           PRIMARY KEY (id)
);

CREATE TABLE ads (
            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
            user_id INT not null ,
            title VARCHAR(100) NOT NULL,
            description TEXT,
            PRIMARY KEY (id),
            foreign key (id) references users(id)

);


# mysql -u root -p -t < ads_migration.sql