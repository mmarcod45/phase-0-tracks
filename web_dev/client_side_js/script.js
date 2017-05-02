console.log("The script is running!");

//// var els = document.getElementsByTagName("h1");
//// var el = els[0]
//// el.style.border = "2px solid red";

////var photo = document.getElementByName("")

// function addPinkBorder() {
// 	var els = document.getElementsByTagName("h1");
// 	var el = els[0]
// 	el.style.border = "2px solid red";
// } 

// ////addPinkBorder();

// 	var els = document.getElementsByTagName("h1");
// 	var el = els[0]
// 	el.addEventListener("click", addPinkBorder); //// not calling addPinkBorder because there are no (). This is just a way of passing a function in without actually calling it yet, it will be called later. 

	//"click" is an 'event listener'. There are other ones.



function addPinkBorder(event) {
	console.log("click happened! here's the click event:");
	console.log(event);
	event.target.style.border = "2px solid red";
} 

	var els = document.getElementsByTagName("h1");
	var el = els[0]
	el.addEventListener("click", addPinkBorder); 


	function change_first_image(event) {
		event.target.style.backgroundColor = "pink";
	}

	var header2 = document.getElementsByTagName("h2")
	var header = header2[0]
	header.addEventListener("mouseover", change_first_image);