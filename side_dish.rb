require 'pry'

$side_dishes = {"Carrots": 1.75, "Mystery Yogurt": 1.00, "Beef Jerky": 0.50}

class SideDish
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  # def add
  #   puts "What menu item would you like to add?"
  #   name = gets.strip
  #   puts "How much does that item cost?"
  #   price = gets.to_f
  #   @side_dish[name] = price
  #   end

end

# side_1 = SideDish.new("Carrots", 1.75)
# side_2 = SideDish.new("Mystery Yougurt", 1.00)
# side_3 = SideDish.new("Beef Jerky", 0.50)


# class SideDish
#   def initialize
#     @side_dish = {"Beef Jerky": 0.50, "Mystery Yogurt": 1.00, "Carrots": 1.75}
#   end
#
#   def self.dishes
#     puts @side_dish
#   end
#
# end

# side_1 = SideDish.new
# side_2 = SideDish.new
# side_3 = SideDish.new
