# Write a program that:

# asks to type in as many words as we want (one word per line, continuing
# until we just press Enter on an empty line), and which then repeats the words
# back to us in alphabetical order.

puts "Type as many words as you want, one word per line."
words = []

while true
  word = gets.chomp
  if word == ''
    break
  end
  words << word
end
puts "Great! Here are your words sorted:"
puts words.sort
