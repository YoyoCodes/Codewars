=begin
Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
=end

def find_it(seq)
  seq.select { |number| seq.count(nunber).odd? }[0]
end
