6 kyu Empty sides of an array
=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}:
Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal. 
=end

def find_even_index(arr)
  i=2
  no_index=true
  
  while i < arr.length
    
    if arr[1..arr.length-1].reduce(:+) == 0
      return 0
      no_index=false
      break
    end
    
    if arr[0] == arr[2..arr.length-1].reduce(:+)
      return 1
      no_index=false
      break
    end   
    
     if 0 == arr[0..arr.length-2].reduce(:+)
      return arr.length-1
      no_index=false
      break
    end  
    
    if arr[0..i-1].reduce(:+) == arr[i+1..arr.length-1].reduce(:+)
      return i
      no_index=false
    else i+=1  
    end  
    
  end  
if no_index 
  return -1
end  
end



=begin
def find_even_index(arr)
  left_sum = 0
  right_sum = arr.reduce(:+)
  
  arr.each_with_index do |e, ind|
    right_sum -= e
    
    return ind if left_sum == right_sum

    left_sum += e
  end
  
  -1  
end
=end
