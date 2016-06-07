#GRADE TRACKER

#require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("test.db")
db.results_as_hash = true

#initialize test_table
create_test_table_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS test(
    id INTEGER PRIMARY KEY,
    student_first VARCHAR(255),
    student_last VARCHAR(255),
    grade INT
  );
SQL

 # FOREIGN KEY (course_id) REFERENCES courses(id) <- goes inside table syntax above if course_table_cmd working
# db.execute(create_course_table_cmd)
db.execute(create_class_table_cmd)

#method to add a insert a student's test scores
def create_test(db, student_first, student_last, grade)
  db.execute("INSERT INTO test (student_first, student_last, grade) VALUES (?, ?, ?);", [student_first, student_last, grade])
end


#add 100 students info to database with randomized data
100.times do
	# create_course(db, Faker::Commerce.department)
	create_class(db, Faker::Name.name, Faker::Commerce.department, Faker::Number.decimal(2))
end