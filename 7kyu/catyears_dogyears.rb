=begin
Kata Task

I have a cat and a dog which I got as kitten / puppy.

I forget when that was, but I do know their current ages as catYears and dogYears.

Find how long I have owned each of my pets and return as a list [ownedCat, ownedDog]

NOTES:

    Results are truncated whole numbers of "human" years

Cat Years

    15 cat years for first year
    +9 cat years for second year
    +4 cat years for each year after that

Dog Years

    15 dog years for first year
    +9 dog years for second year
    +5 dog years for each year after that

=end
def owned_cat_and_dog(cat_years, dog_years)
ownedCat = 0
ownedDog = 0
if cat_years >= 15
  cat_years -= 15
  ownedCat += 1
  if cat_years >= 9
    cat_years -= 9
    ownedCat += 1
      if cat_years >= 4
        ownedCat = ownedCat + cat_years/4
      end
  end
end  
  
if dog_years >= 15
  dog_years -= 15
  ownedDog += 1
  if dog_years >= 9
      dog_years -= 9
      ownedDog += 1
      if dog_years >= 5
        ownedDog = ownedDog + dog_years/5
      end
  end
end  
  
return [ownedCat, ownedDog]
end  
  
=begin
def owned_cat_and_dog(cat_years, dog_years)
  cat = (cat_years > 14 ? 1 : 0) + (cat_years > 23 ? 1 : 0) + (cat_years > 24 ? ((cat_years - 24) / 4).floor : 0);
  dog = (dog_years > 14 ? 1 : 0) + (dog_years > 23 ? 1 : 0) + (dog_years > 24 ? ((dog_years - 24) / 5).floor : 0);
  [cat,dog]
end
=end

