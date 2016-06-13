# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#contact route that displays an address 
get '/contact' do
  "1234 Sesame Street,
  New York, New York
  236368"
end

#route that takes persons name as query parameter and if qp not present, route simply says "Good job!"
get '/great_job' do
  if :name != nil
    "Good job, #{params[:name]}"
  else 
    "Good job!"
  end  
end

#route uses route parameters to add 2 numbers and respond with a result
get '/:num1/add/:num2' do
  numb1 = :num1.to_s
  numb2 = :num2.to_s
  number1 = numb1.to_i
  number2 = numb2.to_i
  result = number1 + number2
end