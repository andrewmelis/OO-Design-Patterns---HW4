require './model'
require './controller'

class View 

  #no need to make this a setter(ie accessor) in this assignment
  attr_reader :model

  def initialize (model)
    @model = model
    @model.add_observer(self)
  end

  def update(position)
    show(position)
  end

  def show(position)
    raise "can't call method in abstract view class"
  end

end

class TrafficView < View

  def show(position)
    puts "Traffic Light:"
    puts position[:traffic]
    puts
  end

end

class PedestrianView < View

  def show(position)
    puts "Pedestrian Light:"
    puts position[:pedestrian]
    puts
  end

end

#subclass of view not completely necessary in this case,
#but could be used to set the text in instructions
#in many other cases
class InstructionView < View

  def self.next_instructions
    puts "\n\nPress the <ENTER> key to change the light"
  end

  def self.end_instructions
    puts "(press ctrl+c to end the program)"
  end
 
end

