console.log("Hello world");

var roll_button = document.getElementById("roll_button");
var canvas = document.getElementById("canvas");
var gCurrentIndex = 0;

var slide_images = [];
var num_of_images = 3;

for (var i = 0; i < num_of_images; i++) {
    slide_images[i] = "slice"+i.toString()+".png";
}

console.log(slide_images);

function changePhoto() {
    // console.log("button pushed!");
    if (gCurrentIndex == 0) {
        canvas.src = slide_images[gCurrentIndex];
        gCurrentIndex++;
    } else {
        
        canvas.src = slide_images[gCurrentIndex];
        gCurrentIndex++;
        if (gCurrentIndex == num_of_images) {
            gCurrentIndex = 0;
        }
    }
}

roll_button.addEventListener("click", changePhoto);