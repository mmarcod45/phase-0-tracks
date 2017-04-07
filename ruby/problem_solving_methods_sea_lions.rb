# RELEASE 0

arr = [42, 89, 23, 1]

def search_array(arr, integer)
  counter = 0 
  while counter < arr.length
    if arr[counter] == integer
      #puts "Hello"
      return counter 
    end 
    counter += 1 
  end 
end 

search_array(arr, 23)

##### this will also work

arr = [42, 89, 23, 1]

def search_array(arr, integer)
  counter = 0 
  result = 0 
  arr.each do |item|
    if item == integer
      result = counter
      return result
    end 
  counter += 1
  end 
end 

p search_array(arr, 23)


# RELEASE 1
def fib(integer)
  array = [0,1]
  counter = 0 
  while counter < integer - 2 
    array << array[counter] + array[counter + 1]
    counter += 1 
  end 
  p array 
end 

fib(6)

##### this will also work

def fib(n)
  first_integer = 0 
  second_integer = 1 
  new_number = 0 
  counter = 0 
  array = []
  until n == counter 
    array << first_integer
    new_number = first_integer
    first_integer = second_integer
    second_integer = new_number + first_integer
    counter += 1
  end 
  
  p array 
end 

fib(6)

# RELEASE 2
