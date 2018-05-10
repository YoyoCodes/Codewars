=begin
Create a Person class with a greet method that returns the first and last name of the person with a greeting. For example if the first name is 'Bob' and the last name is 'Smith' then it should return 'Hello, Bob Smith!'.
=end

class Person
def initialize(first, last)
  @first=first
  @last=last
end

def greet
  return "Hello, #{@first} #{@last}!"
end
end
