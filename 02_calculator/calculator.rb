def add(number1, number2)
  new_number = number1 + number2
end

def subtract(number1, number2)
  new_number = number1 - number2
end

def sum(array)
  total = 0
  array.each do |i|
    total += i
  end
  total
end
