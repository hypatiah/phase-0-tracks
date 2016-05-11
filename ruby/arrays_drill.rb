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