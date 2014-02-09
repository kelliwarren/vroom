class Car
  def drive
    puts "vroom"
  end

  def park(location)
    puts "you parked in the #{location}"
  end
end

ford = Car.new
ford.drive
ford.park("garage")




