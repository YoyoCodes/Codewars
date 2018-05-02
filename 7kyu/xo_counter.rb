#7 kyu  Check to see if a string has the same amount of 'x's and 'o's.
#The method must return a boolean and be case insensitive.
#The string can contain any char.
def XO(str)
  x_no=0
  o_no=0
  i=0
  str.downcase!
  for i in i..str.length-1
    if str[i] == "x"
      x_no += 1
      elsif str[i] == "o"
        o_no += 1
    end
    end
    return x_no == o_no
end
