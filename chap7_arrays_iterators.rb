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

# without the sort method.

j = 0
i = 0
words = []
words2 = []
a_word = 'a' # dummy initialization to get into the until loop below

puts "Type as many words as you want, each on a new line, and enter a blank line to quit"

until a_word.empty?
  a_word = gets.chomp
  if a_word != ''
    words << a_word
    i += 1
  end
end

while words.length > 0
  i = words.length - 1
  # sort by looking for the lowest value word in the original array and
  # pushing it on to the new array
    a_word = words[0]
    a_index = 0
    for j in 1..i
      b_word = words[j]
      if a_word.upcase > b_word.upcase
        a_word = words[j]
        a_index = j  # a variable to reference the words pushed onto the new array
      end
    end
    words2.push a_word  # push smallest word into new array
    words.delete_at(a_index) # delete the lowest element in the original array
    i -= words.length
end

puts "Great! Here are your words sorted:"
puts words2
