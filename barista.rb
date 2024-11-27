class Barista
  attr_accessor :coffee, :milk, :temp, :confirm

  def initialize
    @coffee = coffee
    @milk = milk 
    @temp = "hot"
    @confirm = nil
  end

  def menu
    puts "Our menu:
    Coffee: Cappuccino, Latte, Espresso, Americano
    Milk: Regular, Oat, Almond"
    puts "\n"
  end


  def place_order
    puts "Hello! What coffee can I get you?"
    puts "\n"
    self.coffee = gets.chomp.capitalize

    if self.coffee == "Americano" || self.coffee == "Espresso"

      puts "Ok Ive got an #{self.coffee} coming up"
      puts "\n"
      return

    elsif self.coffee == "Latte" || self.coffee == "Cappuccino"

        puts "Ok a #{self.coffee}.."
        puts "Would you like regular, oatmilk, or almondmilk?"
        puts "\n"
        self.milk = gets.chomp.capitalize

      if self.coffee == 'Latte'

        puts "Would you like your latte iced or hot?"
        puts "\n"
        self.temp = gets.chomp
        
      end
    else
      puts "Sorry we do not serve #{self.coffee}, please order of the menu"
      puts "\n"
      place_order
    end

  end

  def confirm_order

    if self.milk == nil 
      puts "Your order is a #{self.coffee}. Does your order look correct?"
      puts "\n"
      self.confirm = gets.chomp
    elsif self.milk && self.temp == 'iced'
      puts "Your order is an iced #{self.coffee} with #{self.milk} milk. Does your order look correct?"
      puts "\n"
      self.confirm = gets.chomp
    elsif self.milk && self.temp == 'hot'
      puts "Your order is a hot #{self.coffee} with #{self.milk} milk. Does your order look correct?"
      puts "\n"
      self.confirm = gets.chomp
    else
      puts "Sorry, what did you mean?.."
      puts "\n"
      confirm_order
    end

    if self.confirm == 'yes'
      puts "Ok your order will be up in 3 mins.."
      puts "\n"
      return
    elsif  self.confirm == 'no'
      place_order
    else
      puts "Sorry, what did you mean?.."
      puts "\n"
      confirm_order
    end

  end

  def start_shift
    menu
    place_order
    confirm_order
  end

end
