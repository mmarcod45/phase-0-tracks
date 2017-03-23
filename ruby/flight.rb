module Flight  # this is declaring the module 
  def take_off(altitude) # no need to have the Self keyword here
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	include Flight # Adding the module to the Bird class
end 

class Plane 
	include Flight # Adding the module to the Plane class
end 

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)