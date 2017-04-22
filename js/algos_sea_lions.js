var random_array = ["long phrase","longest phrase","longer phrase"];


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