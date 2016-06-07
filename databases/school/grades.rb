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

db.execute(create_test_table_cmd)

#method to add a insert a student's test scores
def add_to_test(test, student_first, student_last, grade)
  db.execute("INSERT INTO #{test} (student_first, student_last, grade) VALUES (?, ?, ?);", [student_first, student_last, grade])
end

#method to create a new test table
def new_test(test_name)
	db.execute("CREATE TABLE IF NOT EXISTS #{test_name} (id INTEGER PRIMARY KEY,
    student_first VARCHAR(255),
    student_last VARCHAR(255),
    grade INT
  );")
end

#method prompts user for first, last, and grade of student
def add_test_prompt
	puts "Which test would you like to add to?"
	test = gets.chomp
	puts "What is the student's first name?"
	first_name = gets.chomp
	puts "What is the student's last name?"
	last_name = gets.chomp
	puts "What is the students grade out of 100?"
	grade = gets.chomp
	add_to_test(test, first_name, last_name, grade)
end

#USER INTERFACE
response = ""
puts "Welcome to Grade Tracker!"
while response != "4"
	puts "Which of the following would you like to do:"
	puts "1. Input new test"
	puts "2. Add test scores to old test"
	puts "3. View current grades"
	puts "4. exit"
	puts "Please ype '1', '2', '3', or '4'"
	response = gets.chomp
	if response == "4"
		exit
	elsif response == "1"
		puts "What would you like to name the new test?"
		test_name = gets.chomp
		new_test(test_name)
	elsif response == "2"
		add_test_prompt
	elsif response == "3"
		db.execute("SELECT * FROM grades")
	else puts "Error: input invalid."
	end
end
exit