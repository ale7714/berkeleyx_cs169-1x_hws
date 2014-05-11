# Alexandra Paredes 
# aept7714@gmail.com


# Define a method hello(name) that takes a string representing a name and 
# returns the string "Hello, " concatenated with the name.
def hello(name)
    "Hello, #{name}"
end

puts hello("ale")

raise "hello(Jordi) != 'Hello, Jordi" if hello("Jordi") != "Hello, Jordi"

# Define a method starts_with_consonant?(s) that takes a string and returns 
# true if it starts with a consonant and false otherwise. (For our purposes, a 
# consonant is any letter other than A, E, I, O, U.)
def starts_with_consonant?(s) 

    consonants = /^[qwrtypsdfghjklzxcvbnm]/i
    s =~ consonants ? true : false
end


str = "cats"
puts starts_with_consonant?(str)

# Define a method binary_multiple_of_4?(s) that takes a string and returns 
# true if the string represents a binary number that is a multiple of 4. 
# NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
   return true if s == '0'
   s =~ /^[01]*[00]{2}$/ ? true : false 
end

puts binary_multiple_of_4?('0100')
puts binary_multiple_of_4?('10100')
