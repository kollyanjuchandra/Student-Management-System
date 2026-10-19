CREATE DATABASE IF NOT EXISTS result_management;
USE result_management;

DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS admins;

CREATE TABLE admins (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  roll_no VARCHAR(30) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  class_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) DEFAULT NULL
);

CREATE TABLE subjects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  subject_code VARCHAR(20) NOT NULL UNIQUE,
  subject_name VARCHAR(100) NOT NULL,
  max_marks INT NOT NULL DEFAULT 100,
  pass_marks INT NOT NULL DEFAULT 35
);

CREATE TABLE marks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  subject_id INT NOT NULL,
  marks_obtained DECIMAL(5,2) NOT NULL,
  UNIQUE KEY student_subject (student_id, subject_id),
  FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
  FOREIGN KEY (subject_id) REFERENCES subjects(id) ON DELETE CASCADE
);

INSERT INTO admins (username, password) VALUES ('admin', 'admin123');
INSERT INTO students (roll_no, name, class_name, email) VALUES
('2026CS001', 'Ananya Sharma', 'BCA Semester 6', 'ananya@example.com'),
('2026CS002', 'Rahul Verma', 'BCA Semester 6', 'rahul@example.com');
INSERT INTO subjects (subject_code, subject_name, max_marks, pass_marks) VALUES
('WT601', 'Web Technologies', 100, 35),
('DB601', 'Database Management Systems', 100, 35),
('PHP601', 'PHP Programming', 100, 35),
('SE601', 'Software Engineering', 100, 35),
('CN601', 'Computer Networks', 100, 35);
INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(1,1,88),(1,2,91),(1,3,86),(1,4,82),(1,5,89),
(2,1,72),(2,2,64),(2,3,69),(2,4,58),(2,5,75);
