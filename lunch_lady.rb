require 'pry'
require 'colorize'
require_relative 'main_dish'
require_relative 'side_dish'

# We need to display and ask for main dishes to choose from
def ordering
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
  finishing_up
end

def finishing_up
  options = ["Can I ring you up?", "Or would you like to start over?"]
  options.each_with_index { |value , i| puts "#{i + 1}: #{value}"}
  choice = gets.to_i
  case choice
  when 1
    puts "Thanks for coming in honey!"
    exit
  when 2
    ordering
  else
    "That isn't one of your options. Try again."
    finishing_up
  end
end

def total(key1, key2, key3)
  sum = 0.00
  sum += (key1 + key2 + key3)
  puts "Your Item Total Is: $#{sum.round(2)}"
end

def special_requests
  puts "==========================".colorize(:yellow)
  puts "What can momma do for you?"
  puts "==========================".colorize(:yellow)
  options = ["Request another main dish", "Request another side dish", "Ready to order"]
  options.each_with_index { |value , i| puts "#{i + 1}: #{value}"}
  choice = gets.to_i
  case choice
    when 1
      puts "What item would you like to add?"
      name = gets.strip
      puts "How much do you think that costs?"
      price = gets.to_f
      puts "Okay I'll put it on the menu."
      MainDish.new(name, price)
      special_requests
    when 2
      puts "What item can I whip up?"
      name = gets.strip
      puts "How much do you think that costs?"
      price = gets.to_f
      puts "Okay I'll put it on the menu."
      SideDish.new(name, price)
      special_requests
    when 3
      ordering
    else
      puts "Now, now! Momma won't do that for you. Try again."
  end
end

def line_options
  puts "========================".colorize(:yellow)
  puts "Welcome to the cafetria!"
  puts "How can I help you?"
  puts "========================".colorize(:yellow)
  options = ["Order from the menu", "Make special requests", "I have to leave"]
  options.each_with_index { |value, i| puts "#{i + 1}: #{value}"}
  choice = gets.to_i
  case choice
    when 1
      ordering
    when 2
      special_requests
    when 3
      exit
    else
      puts "That is not an option please choose something else."
      line_options
    end
end

line_options
