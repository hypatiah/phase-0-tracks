# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("grades_new.db")
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

#method to insert test scores
def create_test(db, student_first, student_last, grade)
  db.execute("INSERT INTO test (student_first, student_last, grade) VALUES (?, ?, ?);", [student_first, student_last, grade])
end

db.execute(create_test_table_cmd)


#USER INTERFACE
response = ""
puts "Welcome to Grade Tracker!"
while response != "4"
	puts "Which of the following would you like to do:"
	puts "1. Input new test scores"
	puts "2. Update test scores"
	puts "3. View current grades"
	puts "4. exit"
	puts "Please ype '1', '2', '3', or '4'"
	response = gets.chomp
	if response == "4"
		exit
	elsif response == "1"
	elsif response == "2"
	elsif response == "3"
	else puts "Error: input invalid."
	end
end
exit