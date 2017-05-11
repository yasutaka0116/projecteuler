# Number letter counts
# Problem 17 
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.



# undtwenty = [3,3,5,4,4,6,5,5,4,3,6,6,8,8,7,7,9,8,8,6]

# undnudred = [6,5,5,5,7,6,6,7]

$undtwenty = {1 => 3, 2=> 3, 3=>5,  4=>4,  5=>4,  6=>3,  7=>5, 8=>5, 9=>4, 10=>3,11=>6,12=>6, 13=>8, 14=>8, 15=>7, 16=>7, 17=>9, 18=>8, 19=>8, 20=>6}

$undhundred = {2=>6, 3=>6, 4=>5, 5=>5, 6=>5, 7=>7, 8=>6, 9=>6}

$hundered = 7
$and = 3
$thousand = 11

$count = 0

def two_digit(num)
   if num <= 20
     $count += num == 0 ? 0 : $undtwenty[num]
  elsif num >20
    one = num.to_s.slice(1,1).to_i
    two =  num.to_s.slice(0,1).to_i
    aaa = $undtwenty[one] == nil ? 0 : $undtwenty[one]
    $count +=$undhundred[two]+aaa
  end
end

def three_digit(num)
  three = num.to_s.slice(0,1).to_i
  if num.to_s.slice(1,2).to_i == 00
    $count += $undtwenty[three]+ $hundered
  else
    $count += $undtwenty[three]+ $hundered+$and
  end
  two_digit(num.to_s.slice(1,2).to_i)
end

1.upto(1000) do |i|
  if i <= 99
    two_digit(i)
  elsif i <= 999
    three_digit(i)
  elsif i == 1000
    $count += $thousand
  end
end

puts $count
