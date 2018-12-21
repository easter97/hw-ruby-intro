# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  if arr.empty?
    return 0
  else
    arr.each { |a| sum += a }
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  sum=0
  if arr.empty?
    return 0
  elsif arr.length==1
    arr.each {|a| return a}
  else
    max=arr[0]
    s_max=arr[1]
    arr.each_with_index{|a, index|
      if a>max
        max=a
      elsif a>s_max && index!=0
        s_max=a
      end
    }
    return max+s_max
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index{ |a, a_index|
    arr.each_with_index{ |b, b_index|
      if a+b == n && a_index != b_index
        return true
      end
    }
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length<1
    return false
  end
  letter=s[0,1]
  if letter =~ /[[:alpha:]]/
    unless letter.upcase=='A' || letter.upcase=='E' || letter.upcase=='I' || letter.upcase=='O' || letter.upcase== 'U'
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s.tr('01','') == ''
    if s.to_i(2)%4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if(isbn.empty? || price<=0)
       raise ArgumentError.new("Invalid arguments!")
    end
    @isbn=isbn
    @price=Float(price)
  end
  def price_as_string
    return "$%.2f" % price
  end
end
