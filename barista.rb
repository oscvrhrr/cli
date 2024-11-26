class Barista
  attr_accessor :coffee, :milk, :temp

  def initialize
    @coffee = coffee
    @milk = milk 
    @temp = "hot"
  end

  def menu
    puts "Our menu:
    Coffee: Cappuccino, Latte, Espresso, Americano
    Milk: Regular, Oatmilk, AlmondMilk"
  end


  def place_order
    puts "Hello! what coffee can I get you?"
    self.coffee = gets.chomp.capitalize
    if self.coffee == "Americano" || self.coffee == "Espresso"
      puts "Ok Ive got an #{self.coffee} coming up"
      return
    elsif self.coffee == "Latte" || self.coffee == "Cappuccino"
      puts "Ok Ive got an #{self.coffee} coming up"
      puts "Would you like regular, oatmilk, or almondmilk"
      self.milk = gets.chomp.capitalize
      if self.coffee == 'Latte'
        puts "would you like you latte iced or hot?"
        self.temp = gets.chomp.capitalize
      end
    end
  end

  def confirm_order
    puts "your order is a #{@temp} #{@coffee}"
  end

  def start_shift
    menu
    place_order
    confirm_order
  end


end
