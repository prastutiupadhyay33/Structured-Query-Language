create database school_info;
use school_info;

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(20),
    section CHAR(1)
);
INSERT INTO Classes VALUES
(1, 'Grade 5', 'A'),
(2, 'Grade 5', 'B'),
(3, 'Grade 6', 'A'),
(4, 'Grade 6', 'B'),
(5, 'Grade 7', 'A'),
(6, 'Grade 7', 'B'),
(7, 'Grade 8', 'A'),
(8, 'Grade 8', 'B'),
(9, 'Grade 9', 'A'),
(10, 'Grade 9', 'B');

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50),
    credit_hours INT
);
INSERT INTO Subjects VALUES
(1, 'Mathematics', 5),
(2, 'Science', 4),
(3, 'English', 3),
(4, 'Social Studies', 3),
(5, 'Hindi', 2),
(6, 'Computer Science', 4),
(7, 'Art', 2),
(8, 'Physical Education', 2),
(9, 'Music', 2),
(10, 'Environmental Studies', 3);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject_id INT,
    contact_number VARCHAR(15),
    hire_date DATE,
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
INSERT INTO Teachers VALUES
(1, 'Rita', 'Das', 1, '9998887770', '2018-06-01'),
(2, 'Sanjay', 'Kumar', 2, '9998887771', '2016-03-15'),
(3, 'Priya', 'Singh', 3, '9998887772', '2019-01-10'),
(4, 'Amit', 'Joshi', 4, '9998887773', '2020-11-02'),
(5, 'Neha', 'Roy', 5, '9998887774', '2017-05-12'),
(6, 'Arun', 'Mishra', 6, '9998887775', '2021-07-23'),
(7, 'Kiran', 'Shah', 7, '9998887776', '2015-09-14'),
(8, 'Manish', 'Pillai', 8, '9998887777', '2018-04-28'),
(9, 'Sneha', 'Bhatt', 9, '9998887778', '2019-08-19'),
(10, 'Rajesh', 'Nanda', 10, '9998887779', '2016-10-05');

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    class_id INT,
    date_of_birth DATE,
    gender CHAR(1),
    contact_number VARCHAR(15),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO Students VALUES
(1, 'Aarav', 'Sharma', 1, '2010-04-12', 'M', '9876543210'),
(2, 'Isha', 'Verma', 2, '2011-07-18', 'F', '9876543211'),
(3, 'Kabir', 'Singh', 1, '2010-09-10', 'M', '9876543212'),
(4, 'Tanya', 'Patel', 3, '2009-11-22', 'F', '9876543213'),
(5, 'Rohan', 'Mehta', 2, '2011-02-14', 'M', '9876543214'),
(6, 'Diya', 'Kapoor', 1, '2010-08-08', 'F', '9876543215'),
(7, 'Vivaan', 'Bansal', 3, '2009-05-01', 'M', '9876543216'),
(8, 'Meera', 'Jain', 2, '2011-06-20', 'F', '9876543217'),
(9, 'Aditya', 'Nair', 1, '2010-01-25', 'M', '9876543218'),
(10, 'Anaya', 'Gupta', 3, '2009-12-30', 'F', '9876543219');

CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    subject_id INT,
    class_id INT,
    exam_date DATE,
    max_marks INT,
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO Exams VALUES
(1, 1, 1, '2025-03-10', 100),
(2, 2, 1, '2025-03-12', 100),
(3, 3, 2, '2025-03-14', 100),
(4, 4, 3, '2025-03-16', 100),
(5, 5, 2, '2025-03-18', 100),
(6, 6, 3, '2025-03-20', 100),
(7, 7, 1, '2025-03-22', 100),
(8, 8, 2, '2025-03-24', 100),
(9, 9, 3, '2025-03-26', 100),
(10, 10, 3, '2025-03-28', 100);

CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    student_id INT,
    exam_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);
INSERT INTO Results VALUES
(1, 1, 1, 89),
(2, 2, 3, 76),
(3, 3, 2, 82),
(4, 4, 4, 91),
(5, 5, 5, 73),
(6, 6, 6, 95),
(7, 7, 7, 88),
(8, 8, 8, 77),
(9, 9, 9, 90),
(10, 10, 10, 85);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    class_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO Attendance VALUES
(1, 1, 1, '2025-02-01', 'Present'),
(2, 2, 2, '2025-02-01', 'Absent'),
(3, 3, 1, '2025-02-01', 'Present'),
(4, 4, 3, '2025-02-01', 'Present'),
(5, 5, 2, '2025-02-01', 'Present'),
(6, 6, 1, '2025-02-01', 'Absent'),
(7, 7, 3, '2025-02-01', 'Present'),
(8, 8, 2, '2025-02-01', 'Present'),
(9, 9, 1, '2025-02-01', 'Present'),
(10, 10, 3, '2025-02-01', 'Present');


