CREATE TABLE schools(
name TEXT,
rating INTEGER,
year_established TEXT,
id INTEGER PRIMARY KEY AUTOINCREMENT
);


CREATE TABLE courses(
name TEXT,
school_id INTEGER references schools,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table students(
name TEXT,
age INTEGER,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table enrollments
(
student_id INTEGER references students,
course_id INTEGER references courses,
id INTEGER PRIMARY KEY AUTOINCREMENT
);