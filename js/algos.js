// PSEUDOCODE
// input: array of words or phrases
// output: returns longest word or phrase in the array
// steps:
// initialize counter = 0 and empty hash = {}
// iterate through each index of array
// for each index, set counter = array[index].length
// 	store array[index] and counter as a key value pair in hash
// print key associated with highest value

function longphrase(array) {
	counter = 0;
	var length_directory = {};
	for (var i=0; i < array.length; i++){
		counter = array[i].length;
		length_directory[array[i]] = counter;
	}
	for (var i in length_directory){
		if(length_directory[i] == max){
			return i;
		}
	}
}

array_test = ["long phrase", "longest phrase", "longer phrase"];
console.log(longphrase(array_test));