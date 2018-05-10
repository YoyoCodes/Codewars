=begin
You will be given a string (map) featuring a cat "C" and a mouse "m". The rest of the string will be made up of dots (".") The cat can move the given number of moves up, down, left or right, but not diagonally.

You need to find out if the cat can catch the mouse from it's current position and return "Caught!" or "Escaped!" respectively.

Finally, if one of two animals are not present, return "boring without two animals".
=end
def cat_mouse(map, moves)
  a = map.split("\n")
  cat = false
  mouse = false
  cat_x, cat_y, mouse_x, mouse_y = 0
  mov = 0
  i_limit = a.length
  j_limit = a[0].length
  for i in  0..i_limit-1 do
    for j in 0..j_limit-1 do
      if a[i][j] == "C"
        cat_x = i
        cat_y = j
        cat = true
      end  
      
      if a[i][j] == "m"
        mouse_x = i
        mouse_y = j
        mouse = true
      end 
    end
  end 
  
  if cat == false || mouse == false
    return "boring without two animals"
  else 
    x_pos = cat_x - mouse_x
    y_pos= cat_y - mouse_y
    mov = x_pos.abs + y_pos.abs
    if mov <= moves
      return "Caught!"
    else 
      return "Escaped!"
    end
  end  
        
end
