# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for num in arr
    sum = sum + num
  end
  return sum
end

def max_2_sum arr
  arr = arr.sort
  if arr.length() == 0
    return 0
  end
  if arr.length() == 1
    return arr[0]
  end 
  return arr[arr.length()-1]+ arr[arr.length()-2]
  
end

def sum_to_n? arr, n
  if arr.length() < 1
    if arr[0] == n
      return true
    end
    return false
  else
    count = 0
    while count < (arr.length() - 1)
      if arr[count] + arr[count + 1] == n
        return true
      end 
      count = count + 1
    end 
    return false
  end 
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s = s.downcase
  if (s.length() == 0)
    return false
  end
  if (s[0] == 'a' or s[0] == 'e' or s[0] == 'i' or s[0] == 'o' or s[0] == 'u')
    return false
  end
  if (!s[0].match(/^[[:alpha:]]$/))
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if (s.match(/[[:alpha:]]/))
    return false
  end
  if (s.length() >= 2)
    if (s[s.length()-1] == '0' && s[s.length()-2] == '0')
      return true
    end
  elsif (s.length() == 1 && s[0] == '0')
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if (isbn.length() > 0)
      @isbn = isbn
    else
      raise ArgumentError.new("Expected an ISBN of length greater than 0")
    end
    if (price > 0)
      @price = price
    else
      raise ArgumentError.new("Expected price greater than $0")
    end
  end
  
  def price_as_string
    if (@price.is_a? Integer)
      return "$" + @price.to_s + ".00"
    else
      cents = ((@price % 1).truncate(2) * 100).to_i
      dollar = @price.to_i
      if (cents < 10)
        return "$" + dollar.to_s + "."+ cents.to_s + "0"
      end
      return "$" + dollar.to_s + "." + cents.to_s
    end
  end 
end
