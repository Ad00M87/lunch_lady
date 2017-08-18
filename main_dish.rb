require 'pry'

$main_dishes = {"Meatloaf": 5.00, "Mystery Meat": 5.00, "Slop": 3.00}

class MainDish
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

# main_1 = MainDish.new("Meatloaf", 5.00)
# main_2 = MainDish.new("MysteryMeat", 5.00)
# main_3 = MainDish.new("Slop", 3.00)
