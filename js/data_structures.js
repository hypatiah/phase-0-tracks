var colors = ["blue", "green", "rainbow", "sparkles"];
var names = ["Ed", "Honey", "Sea", "Beatrice"];

colors.push("reddyred");
names.push("Lala");

var horses = {};
for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);