///////// Release 0 

var random_array = ["long phrase","longest phrase","longer phrase"];
var random_array_2 = ["long phrase","longest phrase","longer phrase", "longesttttt phrasee in the world"];


function longest_string(array) {
  var maxLength=array[0].length;
	for (var i = 0; i < array.length; i++) {
		if(array[i].length > maxLength) maxLength = array[i].length}
    maxLength;
    
  for (var i = 0; i < array.length; i++){
    if(array[i].length === maxLength) {
      return array[i];
    }
  }
}

console.log(longest_string(random_array));
console.log(longest_string(random_array_2));


// function longest_string(array) {
// 	for (var i = 0; i < array.length; i++) {
// 		if (array[i].length > array[i + 1].length && array[i].length > array[i + 2].length) {
// 			return array[i];
// 		} else if (array[i].length < array[i + 1].length && array[i + 1].length > array[i + 2].length) {
// 			return array[i + 1];
// 		} else {
// 			return array[i + 2];
// 		} 
// 	}
// }

// console.log(longest_string(random_array));



///////// Release 1 

// var object_1 = {name: "Steven", age: 54}
// var object_2 = {name: "Tamir", age: 54}

// function match(object1, object2) {
// 	for (var i = 0; i < obj1.length; i++) {
// 		if (object1.name ===
// 	}
// }

// function match(object1, object2) {
// 	for (var key in object_1) {
// 		if object_2.include? key
// 	}
// }

// for (var key in data) {
//   console.log(key);
// }

/////


var data_1 = {name: "Steven", age: 54}
var data_2 = {name: "Tamir", age: 54}

function match(data_1, data_2) {
  if (data_1.name === data_2.name) {
    return true;
  } else if (data_1.age === data_2.age) {
    return true;
  } else {
    return false;
  }
}

console.log(match(data_1, data_2));


// var obj = {a: 1, b: 2, c: 3};
// var obj2 = {a: 1, e: 6, f: 8};

// obj.hasOwnProperty("a");

// obj["a"] === obj2["a"]



///////// Release 2

function random_word(integer) {

	var array = []

	for (var i = 0; i < integer; i++) {
  
  	
  	var string = "";
  	
  	random = Math.floor(Math.random() * (10 - 1)) + 1;
  	
  	for (var i = 0; i < random; i++) {
  	
  	var possible = "abcdefghijklmnopqrstuvwxyz"
  	
  	
  	text = possible.charAt(Math.floor(Math.random() * possible.length));
  	
  	
  	string += text
  	
  	}
  	string
  	array.push(string)
  	console.log(array);
  	return array 

	}


}

console.log(random_word(3));





