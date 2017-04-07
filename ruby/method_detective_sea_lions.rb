# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase 
# => “InVeStIgAtIoN”


 "zom".insert(1, 'o')
# => “zoom”

 "enhance".center(15)
# => "    enhance    "

 "Stop! You’re under arrest!".swapcase #this will swap case
 "Stop! You’re under arrest!".upcase 

# => "STOP! YOU’RE UNDER ARREST!"


# "the usual".<???>  #append - to add something to the end
a = "the usual "
a << "suspects"

s = "the usual"
s.replace "the usual suspects"

#=> "the usual suspects"


# " suspects".<???>  #prepend - to add something to the beginning
a = "suspects"
a.prepend("the usual ")

s = "suspects"
s.replace "the usual suspects"

# => "the usual suspects"


 "The case of the disappearing last letter".chop 
# => "The case of the disappearing last lette"

 "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze 
# => "Elementary, my dear Watson!"

 "z".ord
# => 122 
# It is its ordinal number (What is the significance of the number 122 in relation to the character z?)

 "How many times does the letter 'a' appear in this string?".count "a"
# => 4