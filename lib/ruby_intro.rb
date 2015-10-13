# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.reduce(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.sort.reverse.take(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.combination(2).count { |a,b| a + b == n } > 0
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if !s or s==""
  (('a'..'z').to_a - ['a', 'e' 'i', 'o', 'u']).include?(s[0].downcase)
end

def binary_multiple_of_4? s
  return false if !s or s=="" or !!s.index(/[^0|1]/)
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
   attr_accessor :isbn , :price
   #attr_accessor :price
   def initialize(isbn, price)
     raise ArgumentError if price <= 0 or isbn.empty?
     @price = price
     @isbn = isbn
   end
   
   def price_as_string
     "$%0.2f" % price
   end
end
