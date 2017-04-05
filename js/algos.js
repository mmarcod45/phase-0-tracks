// release 0 

array = ["long phrase","longest phrase","longer phrase"]

function longestElement(array) {
  // counter = 0 
  // while counter < array.length
  var number = array[0].length;
  var number2 = array[1].length;
  var number3 = array[2].length;
  maxNum = Math.max(number, number2, number3)
  if (maxNum === array[0].length) {
    console.log(array[0])
    return array[0]
  }
  else if (maxNum === array[1].length) {
    console.log(array[1])
    return array[1]
  }
  else {
    console.log(array[2])
    return array[2]
  }
  //n = n + 1;
}

longestElement(array)


