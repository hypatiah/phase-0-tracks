def questionaire(input1, input2, input3)
  answer = [input1, input2, input3]
  p answer
end

def add_to_array(thing1, thing2)
  response = thing1 << thing2
  p response
end

add_to_array([], 3)
add_to_array([], "wee")
add_to_array(["wee"], "wee")

cookies = []
p cookies
cookies = cookies + ["chocolate chip", "sugar", "oatmeal", "snickerdoodle", "macadamia"]
p cookies
cookies.delete_at(2)
p cookies
cookies = cookies.insert(2,"thin mint")
p cookies
cookies.delete("chocolate chip")
p cookies
if cookies.include?("sugar")
  p "We do carry sugar cookies"
else
  p "Sorry were all outta sugah"
end
garden_tools = ["hoes", "shovels", "rakes"]
garden_bakery = cookies + garden_tools
p garden_bakery
questionaire(1, nil, "happy")