=begin
As a part of this Kata, you need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.

The input to the function will be an array of three distinct numbers 
=end

def gimme(input_array)
  aux=input_array.sort
  return input_array.index(aux[1])
end

#def gimme(array)
#  array.index(array.sort[1])
#end

