#GRADE TRACKER

#require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("class.db")
db.results_as_hash = true

# create_course_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS courses(
#     id INTEGER PRIMARY KEY,
#     course_name VARCHAR(255),
# SQL

#initialize class_table
create_class_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS class(
    id INTEGER PRIMARY KEY,
    student VARCHAR(255),
    course VARCHAR(255),
    grade INT
  );
SQL

 # FOREIGN KEY (course_id) REFERENCES courses(id) <- goes inside table syntax above if course_table_cmd working
# db.execute(create_course_table_cmd)
db.execute(create_class_table_cmd)

# def create_course(db, name)
# 	db.execute("INSERT INTO courses (name) VALUES (?)", [name])
# end

#method add a student's name, course and grade into class database
def create_class(db, student, course, grade)
  db.execute("INSERT INTO class (student, course, grade) VALUES (?, ?, ?);", [student, course, grade])
end

#add 100 students info to database with randomized data
100.times do
	# create_course(db, Faker::Commerce.department)
	create_class(db, Faker::Name.name, Faker::Commerce.department, Faker::Number.decimal(2))
end