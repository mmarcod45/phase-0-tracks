// get user input through driver code
// pass input thorough the function to split the word into an array
// reverse the array 
// join it again into a string 
// return the reversed word 



function reverseWord(str) {
    var splitWord = str.split("");
    var reverseArray = splitWord.reverse(); 
    var joinArray = reverseArray.join(""); 
    return joinArray; 
}
 
reverseWord("hello"); 
console.log(reverseWord("hello"));

var length = 5
if (length < 10) { console.log(reverseWord("bye")) }
