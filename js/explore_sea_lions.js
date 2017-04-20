// release 3 

for (var i=1; i <= 10; i++ ) { // this will print all numbers starting at 1
	console.log(i);
}

for (var i=1; i <= 10; i+=2 ) { // this will increment by 2 starting at 1
	console.log(i);
}

for (var i=0; i <= 10; i+=2 ) { // this will increment by 2 starting at 0
	console.log(i);
}

for (var i=10; i >= 0; i-- ) { // this will count down and stop at 0
	console.log(i);
}

for (var i=10; i > 0; i-- ) { // this will count down and stop at 1
	console.log(i);
}


// release 4

// take input as a string
// split the string
// reverse the split string
// join the split string
// return the reversed string as output and print 

function reverseWord(str) {
    var splitWord = str.split("");
    var reverseArray = splitWord.reverse(); 
    var joinArray = reverseArray.join(""); 
    return joinArray; 
}
 
reverseWord("hello"); 
console.log(reverseWord("hello"));