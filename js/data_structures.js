var colors = ["blue", "green", "rainbow", "sparkles"];
var names = ["Ed", "Honey", "Sea", "Beatrice"];

//add elements to colors and names array
colors.push("reddyred");
names.push("Lala");
//create horses hash takes names array as keys and colors array as values
var horses = {};
for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}
//test horses array
console.log(horses);

//constructor function for a car
function Car(color, model, price) {
	this.color = color;
	this.model = model;
	this.price = price;
	this.purrs = function() { console.log("Purrrr");};
}
//test few cars using Car constructor function 
var aCar = new Car("blue", "jaguar", 100000);
console.log(aCar);
console.log('Our car says..')
aCar.purrs();

var anotherCar = new Car("gold", "tesla", 120000);
console.log(anotherCar);
console.log('Our car says..')
aCar.purrs();

