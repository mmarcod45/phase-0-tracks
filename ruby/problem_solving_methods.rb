# RELEASE 0
arr = [42, 89, 23, 1]

def search_array(arr, n)
  counter = 0 
  result = 0 
  arr.each do |number|
    if number == n 
      result = counter
      p result
    end 
  counter += 1 
  end 
end 

p search_array(arr, 23)



# RELEASE 1
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




def temp(number)
  index = 0 
  temperatures = [100, 99, 54, 23, 98, 55]
  while int = temperatures[index]
   if temperatures[index] == temperatures.length - (temperatures.length)
     
  index += 1
  puts int 
end 
end 

p temp(8)




# RELEASE 2
# Bubble sort
def bubble_sort array
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [1, 4, 1, 3, 4, 1, 3, 3]
p bubble_sort(a)

# make array of first name
# will sort in alphabetical or numberical order 
exit_word = "done" 
user_input = ""

numbers = []

while exit_word != user_input 
	puts "Enter a digit at a time (or 'done')?"
    user_input = gets.chomp 
    numbers << user_input
  end
  
  numbers.delete("done")
  p numbers
  
if numbers.length < 5
  puts "Here are your small number in ascending order"
  numbers.sort
else 
  puts "Here are your large number in descending order"
  numbers.sort.reverse
end 