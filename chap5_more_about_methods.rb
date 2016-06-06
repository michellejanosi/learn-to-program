# Write a program that:

# asks for your first and last names individually, and then adds those
# lengths together.

puts "What is your first name?"
fname = gets.chomp
puts "What is your last name?"
lname = gets.chomp
puts "Your first and last name is #{fname.length.to_i + lname.length.to_i} characters long."

# rudely asks what you want (Angry Boss program).

puts "WHAT DO YOU WANT?"
want = gets.chomp
puts "WHADDAYA MEAN \"#{want.upcase}\"?!?  YOU'RE FIRED!!"

# displays a Table of Contents.

puts "Table of Contents".center(50)
puts "Chapter 1:  Numbers".ljust(30) + "page 1".rjust(20)
puts "Chapter 2:  Letters".ljust(30) + "page 72".rjust(20)
puts "Chapter 3:  Variables".ljust(30) + "page 118".rjust(20)
