# Write a program that:

# prints out the lyrics to that beloved classic: "99 Bottles of Beer on the Wall."

bottles_of_beer = 99

while bottles_of_beer >= 1
  puts "#{bottles_of_beer} bottle(s) of beer on the wall, #{bottles_of_beer} bottle(s) of beer."
  puts "Take one down and pass it around, #{bottles_of_beer -= 1} bottle(s) of beer on the wall."
  bottles_of_beer -= 1
  sleep(0.5)
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."

# whatever you say to grandma (whatever you type in), she should respond with
# HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals).
# If you shout, she can hear you (or at least she thinks so) and yells back,
# NO, NOT SINCE 1938! To make your program really believable, have grandma shout
# a different year each time; maybe any year at random between 1930 and 1950.
# You can't stop talking to grandma until you shout BYE 3 times in a row.

puts "HEY, SONNY! SIT DOWN AND HAVE A CHAT WITH YOUR DEAR OLD GRANDMA!"

while true
  your_response = gets.chomp
  break if your_response == "BYE BYE BYE"
    grandma_response = if your_response != your_response.upcase
    "HUH?!  SPEAK UP, SONNY!"
  else
    "NO, NOT SINCE #{rand(1930...1950)}!"
  end
  puts grandma_response
end

puts "OK, BYE, SONNY!"

# write a program which will ask for a starting year and an ending year, and
# then puts all of the leap years between them (and including them, if they are
# also leap years). Leap years are years divisible by four (like 1984 and 2004).
# However, years divisible by 100 are not leap years (such as 1800 and 1900)
# unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years).

puts "Let's find the leap years. Pick a starting year."
starting = gets.chomp.to_i
puts "Pick an ending year."
ending = gets.chomp.to_i
puts "These are your leap years:"

(starting...ending).each do |year|
  if (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
    puts year
  end
end
