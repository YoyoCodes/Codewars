#7 kyu  
=begin
You will be given a string (x) featuring a cat 'C' and a mouse 'm'. The rest of the string will be made up of '.'.

You need to find out if the cat can catch the mouse from it's current position. The cat can jump over three characters. So:

C.....m returns 'Escaped!' <-- more than three characters between

C...m returns 'Caught!' <-- as there are three characters between the two, the cat can jump.

=end

def cat_mouse(x)
cat_index, mouse_index = 0
x=x.split("")
x.each_with_index do |letter, index|
 if letter == "C"
   cat_index = index
 elsif letter == "m"
   mouse_index = index
 end  
end
  
  if cat_index + 3 >= mouse_index
    return 'Caught!'
  else
    return  'Escaped!'
  end  
    
end

=begin

=end


