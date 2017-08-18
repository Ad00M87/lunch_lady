require 'pry'
require 'colorize'
require_relative 'main_dish'
require_relative 'side_dish'

# We need to display and ask for main dishes to choose from
def ordering
  puts "========================".colorize(:yellow)
  puts "Welcome to the cafetria!"
  puts "========================".colorize(:yellow)
  puts "Please select a main dish that you would like to have."
  puts "========================".colorize(:yellow)
  $main_dishes.each do |key, value|
    puts "> #{key} => #{value}"
  end
  main_choice = gets.strip
  puts "========================".colorize(:yellow)
  puts "Please select your side dish."
  puts "========================".colorize(:yellow)
  $side_dishes.each do |key, value|
    puts "> #{key} => #{value}"
  end
  side_choice1 = gets.strip
  puts "========================".colorize(:yellow)
  puts "Please select your second side dish."
  puts "========================".colorize(:yellow)
  $side_dishes.each do |key, value|
    puts "> #{key} => #{value}"
  end
  side_choice2 = gets.strip
  puts "========================".colorize(:cyan)
  puts "Your order consists of: #{main_choice}, #{side_choice1}, and #{side_choice2}."
  total($main_dishes[main_choice.to_sym], $side_dishes[side_choice1.to_sym], $side_dishes[side_choice2.to_sym])
  puts "========================".colorize(:cyan)
end

def total(key1, key2, key3)
  sum = 0.00
  sum += (key1 + key2 + key3)
  puts "Your Item Total Is: $#{sum.round(2)}"
end

ordering
