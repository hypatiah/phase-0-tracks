closet = {
	dresser: {
		drawer1: ['Shorts', 'yoga pants', 't-shirts'],
		drawer2: 'Shirts',
		drawer3: 'Jeans'
	},
	shelf: {
		sweatshirts: 5,
		blankets: 2,
		towels: 3},
	hangers: ['dresses', 'jackets', 'coats']
}

puts closet[:dresser][:drawer3]
puts closet[:shelf]
puts closet[:hangers][0]