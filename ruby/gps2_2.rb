# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #Split items as objects in array when theres a space
  #list.split(' ')
  #list.to_h
  # set default quantity
  #list.default = 1
  # print the list to the console by using the method at the bottom
# output: our list as a hash with key value pairs of the item and its resp quantity
puts "What do you want to get at the store?"
response = gets.chomp

def create_list(list)
	list_split = list.split(' ')
	arry = []
	hsh = {}
	list_split.each {|item| hsh[item] = 1}
	hsh.default = 1
	puts hsh
end
create_list(response)


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
	#prompt user which item want to add and optional quantity
	#list[new_item] = optional_quantity
# output: updated hash with the new item/quantity

def add

# Method to remove an item from the list
# input: item name we want to remove
# steps:
	#prompt user which item want to remove
	#remove item
	#list.delete("item name")
# output: updated list with the removed item

# Method to update the quantity of an item
# input: item name, new item quantity
# steps:
	#prompt user which item they want to update
	#prompt user for the new quantity they want of the item
	#list["itemname"] = updated_quantity
# output: updated list with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: 
	#list.each {|item, quantity| puts "You need to buy #{quantity} #{item}s!"}
# output: pretty, readable list