// PSEUDOCODE: 
// input: string
// output: string backwards
// Steps:
// create an empty string to store characters of reversed string
// print last index of string and store it in the empty string
// then loop through indices, counting down by 1, while printing each character until you get to the last index=0. result will be print of each index in reverse order stored together as one string

function reverse(string) {
	// initializes empty string that will store characters of reversed string
	new_string = "";
	// let i = length of the string minus 1 since fist character has index 0, then subtract 1 from i until you reach i=0
	for (var i = (string.length -1); i >= 0; i -= 1){
		// store string index beginning with largest index and add to empty string
		new_string = new_string + string[i];
	}
	return new_string;
}

//DRIVER CODEn
var happy_backwards = console.log(reverse("Happy"));

// if ("apples" != "oranges") {
// 	happy_backwards;
// }
