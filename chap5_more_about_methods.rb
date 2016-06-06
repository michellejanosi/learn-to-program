# Write a program that:

# asks for your first and last names individually, and then adds those
# lengths together.

puts "What is your first name?"
fname = gets.chomp
puts "What is your last name?"
lname = gets.chomp
puts "Your first and last name is #{fname.length.to_i + lname.length.to_i} characters long."
