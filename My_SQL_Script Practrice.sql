use startersql;

create table users (
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender enum('Male', 'Female', 'Other'),
date_of_birth date,
created_at timestamp default current_timestamp
);

INSERT INTO users (name, email, gender, date_of_birth)
VALUES
('Ashish', 'ashish@gmail.com', 'Male', '2003-06-14'),
('Rahul', 'rahul@gmail.com', 'Male', '2001-03-22'),
('Priya', 'priya@gmail.com', 'Female', '2002-08-15'),
('Amit', 'amit@gmail.com', 'Male', '2000-11-09'),
('Sneha', 'sneha@gmail.com', 'Female', '2003-01-28'),
('Rohit', 'rohit@gmail.com', 'Male', '2001-07-17'),
('Pooja', 'pooja@gmail.com', 'Female', '2002-12-05'),
('Karan', 'karan@gmail.com', 'Male', '2000-09-30'),
('Neha', 'neha@gmail.com', 'Female', '2003-04-11'),
('Vikas', 'vikas@gmail.com', 'Male', '2001-06-26'),
('Anjali', 'anjali@gmail.com', 'Female', '2002-10-19'),
('Saurabh', 'saurabh@gmail.com', 'Male', '2000-02-03'),
('Meera', 'meera@gmail.com', 'Female', '2003-05-24'),
('Nikhil', 'nikhil@gmail.com', 'Male', '2002-01-12'),
('Kavita', 'kavita@gmail.com', 'Female', '2001-08-08');

SELECT * FROM users where gender = "Female";

select id from users;