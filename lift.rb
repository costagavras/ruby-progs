require 'pry'

class Elevator

  @@elevators = 0
  @@floors = (1..10)
  attr_accessor :direction, :floor

  def initialize(floor)
    @floor = floor
  end

  def where_am_i
    puts "I am on the #{@floor} floor."
  end


  def receive_orders
    puts "Your are now on the #{@floor} floor."
    print "Please enter the floor number: "
    STDOUT.flush
    str = gets.chomp!
    if str.nil? || str.empty?
      exit
    elsif @@floors.include?(str.to_i) == false
# binding.pry
      puts "You cannot go beyond limits of the building!"
      exit
    end
    dest_floor = str.to_i
    if dest_floor == @floor
      puts "You are already on this floor"
    else
      @floor = dest_floor
      puts "You've reached floor #{@floor}!"
    end
  end

end

elevator1 = Elevator.new(1)
elevator1.receive_orders
elevator1.where_am_i
