HORSES = {
  "Speedfire" => "17",
  "Rockleg" => "18",
  "Topfly" => "3",
  "Orionsoul" => "7"
}

puts "Here's Jackson speaking, I am pround to comment this race !"
sleep(1)
puts "Welcome to the Stadium !"

sleep(1)
puts "Please, may I ask your name ?"

user_name = gets.chomp.capitalize

puts "Thank you #{user_name}, you are allowed to bring your own horse
would you like to insert him in the field ? Y/N "

user_choice = gets.chomp.to_s

until user_choice.include? "Y"

puts "Please #{user_name}, you are allowed to bring your own horse
would you like to insert him in the field ? Y/N "
user_choice = gets.chomp.to_s
break if user_choice == "N"
puts "Ok ! We already have some in the field for you buddy !"
end
if user_choice == "Y"
  puts "What is the name of your horse ?"
  horse_name = gets.chomp
  puts "what is the N° of your horse ?"
  horse_number = gets.chomp

  HORSES[horse_name] = horse_number
else
  puts "You didn't answered !"
end

sleep (1)

puts "Horses ready to race:"
sleep(1)
puts "----------------------------------------------"
HORSES.each {|horse, num| puts "-> N°#{num}: #{horse}"}
puts "-----------------------------------------------"
sleep(1)
puts "Select the number of your horse #{user_name} to bet on him! :"
user_bet = gets.chomp

until HORSES.values.include? user_bet.to_s
  puts "I said select the number of your horse among those available dude #{user_name}! :"
user_bet = gets.chomp
end

puts "Let's the race begin!"
puts "Are you ready?"
sleep(1)
puts "3"
sleep(1)
puts "2"
sleep (1)
puts "1"
sleep (1)

puts "GOOOOOOOOOOOOOOOOOOO !"
sleep(2)
puts "The race is on the way, Speedfire overtakes Oriansoul"
sleep (2)
puts "Rockeleg has trouble with Topfly on the left side !"
sleep (2)
puts "Oh my god ! That is ubeleivable ! What a race of gods !"
sleep (2)
puts "50m more meters and the winner is ???"

sleep(1)

race_order = HORSES.values.shuffle!
first_place = race_order[0]

winning_horse = HORSES.key(race_order[0])


puts"-------------------------"
puts"-------------------------"

puts "N°#{first_place}!"

puts "------------------------"
puts "------------------------"
sleep(1)
puts "#{winning_horse} smashed it!"

unless first_place != user_bet
    puts "#{user_name}, you WIN 12456 dollars"
  else puts "#{user_name}, bad luck today ! You LOSE !"
end










