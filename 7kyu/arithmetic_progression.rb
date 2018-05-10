=begin
7 kyu
In your class, you have started lessons about arithmetic progression. Since you are also a programmer, you have decided to write a function that will return the first n elements of the sequence with the given common difference d and first element a. Note that the difference may be zero!

The result should be a string of numbers, separated by comma and space.
=end

def arithmetic_sequence_elements(a,r,n)
  string=""
  first = a
  for i in 1..n do
    string << first.to_s + ", "
    first += r
  end
  return string[0..-3]
end

=begin
def arithmetic_sequence_elements(a,r,n)
  Array.new(n) { |n| r*n+a }.join(", ")
end
=end
