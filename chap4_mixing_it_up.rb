# Write a program that:

# Asks for a person's full name and greet them with it.
puts "What is your first and last name?"
name = gets.chomp
puts "Hey there, #{name}! It's nice to meet you!"

# Asks for a person's favorite number. Have your program add one to the number,
# then suggest the result as a bigger and better favorite number.

puts "What's your favorite number?"
number = gets.chomp
puts "I think #{number.to_i + 1} is a bigger and better favorite number."
