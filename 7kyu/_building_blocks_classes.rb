=begin 7 kyu
Write a class Block that creates a block (Duh..)

##Requirements

The constructor should take an array as an argument, this will contain 3 integers of the form [width, length, height] from which the Block should be created.
=end

class Block

  def initialize(arr)
  @width, @length, @height = arr
  end
  
  def get_width()
    @width
  end
  
  def get_length()
     @length 
  end
  
  def get_height()
     @height 
  end
  
  def get_volume()
   @width * @length * @height
  end
  
  def get_surface_area()
    2*(@width * @length + @length * @height + @width * @height)
  end 
end
