// PSEUDOCODE
// input: array of words or phrases
// output: returns longest word or phrase in the array
// steps:
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
		sample_length = counter;	
	}
	return result
}

//Driver code
array_test = ["long phrase", "longest phrase", "longer phrase"];
console.log(longphrase(array_test));


