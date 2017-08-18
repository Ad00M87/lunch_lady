require 'pry'
require 'colorize'
require_relative 'main_dish'
require_relative 'side_dish'

# We need to display and ask for main dishes to choose from
def ordering
  puts "Welcome to the cafetria!"
  puts "Please select a main dish that you would like to have."
  $main_dishes.each do |key, value|
    puts "> #{key} => #{value}"
  end
  main_choice = gets.strip
    if $main_dishes.has_key?(main_choice.to_sym)
      total($main_dishes[main_choice.to_sym])
    else
      puts "That is not a dish. Please make another choice."
      ordering
    end
  puts "Please select your side dish."
  $side_dishes.each do |key, value|
    puts "> #{key} => #{value}"
  end
  side_choice1 = gets.strip
    if $side_dishes.has_key?(side_choice1.to_sym)
      total($side_dishes[side_choice1.to_sym])
    else
      puts "That is not a dish. Please make another choice."
    end
  puts "Please select your second side dish."
  $side_dishes.each do |key, value|
    puts "> #{key} => #{value}"
  end
  side_choice2 = gets.strip
    if $side_dishes.has_key?(side_choice2.to_sym)
      total($side_dishes[side_choice2.to_sym])
    else
      puts "That is not a dish. Please make another choice."
    end

end

# We then need to display side dishes to choose from two times

# We need to have some sort of total price running.
def total(key)
  sum = 0.0
  sum += key
  puts "Your Item Total Is: $#{sum.round(4)}"
end

ordering
