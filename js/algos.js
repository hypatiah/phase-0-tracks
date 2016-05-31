// PSEUDOCODE: Find longest phrase
// Input: array of words or phrases
// Output: returns longest word or phrase in the array
// Steps:
// initialize sample string length = 0
// iterate through each index of array
// for each index, set counter = array[index].length
// if the counter is greater than sample string, return the corresponding array index
// assign sample string the value of the counter to be used for comparison in next iteration 
// return array index with the highest counter value

function longphrase(array) {
	//counter = 0;
	sample_length = 0
	//var length_directory = {};
	
	for (var i=0; i < array.length; i++){
		// let counter be the length of the element of the array
		counter = array[i].length;
		// if the counter is greater than the sample_length, 
		if (counter >= sample_length) {
			result = array[i];
		}
		//assigns new sample legnth value to = counter so can be used to compare in next iteration
		sample_length = counter;	
	}
	return result
}


//PSEUDOCODE: Find key-value match
// Input: 2 objects
// Output: true if objects share at least 1 key-value pair, false if objects dont
// Steps:
// loop through each key of one hash and compare it to all other keys,
// if the keys are equal, then see if the values are equal, in which case return true, if not return false
// if the keyse aren't equal to begin with, return false as well

function match(hsh1, hsh2){
	for (var i=0, j=0; i < hsh1.length; i++, j++) {
		if (hsh1[i] == hsh2[j]) {
			if (match.hsh1[i] == match.hsh2[j]) {
			return true;}
			else {return false;}
		}
		else {return false}
	}
}


//DRIVER CODE
//test for longphrase function
array_test = ["long phrase", "longest phrase", "longer phrase"];
array2 = ["panda", "cat", "fish", "squirrel"];
console.log(longphrase(array_test));
console.log(longphrase(array2));

//test for key-value match function
hash1 = {name: "Tamir", age: 54};
hash2 = {name: "Steven", age: 54};
console.log(match(hash1,hash2))
