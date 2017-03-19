# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.select{|item| item[0] == 'a'}
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  vowels =['a','e','i','o','u']
  array.select{|item| vowels.include?(item[0])}
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.reject{|n| n == nil}
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.reject{ |n| !n }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map {|item| item.reverse}
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  array.combination(2)
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.drop(3)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  [element] + array
  #array.insert(position, item)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  reverse_array = array.map {|item| item.reverse}.sort
  reverse_array.map{|item| item.reverse}
  # a.sort_by{ |element| element[-1]}
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  half_string_length = (string.length.to_f/2).ceil
  string[0...half_string_length]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  number >= 0 ? -number : number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  even = array.select{|n| n % 2 == 0}
  odd = array.select{|n| n % 2 != 0}
  [even, odd]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  array.count {|item| item == item.reverse}
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.sort_by{|s| s.length}[0]
end

# return the shortest word in an array
def longest_word_in_array(array)
  array.sort_by{|s| s.length}[-1]
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject(:+)
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array + array
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  # sum_of_array = array.reduce(:+).to_f
  (array.reduce(:+)/array.length.to_f).ceil
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  n = array.detect{|i| i > 5}
  stop_when = array.index(n)
  array[0...stop_when]
  #declare a new array and push to it. Use break to stop iteration
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  hash = Hash[*array]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  array.map {|item| item.split('') }.flatten.uniq.sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert
  # reversed_hash = {}
  # hash.each{|k, v| reversed_hash[v] = k}
  # reversed_hash
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  count = 0
  hash.each{|k, v| count += k + v }
  count
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.gsub(/\p{Lu}/, '')
  #p matches a character with the property in curly brackets{}. L refers to letter and u to uppercase,

end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  float.floor
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  date.strftime('%d/%m/%Y')
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  email.split(/@/)[1].split('.')[0]
  # email.slice(0..(email.index('@')))
  # email
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  words_to_ignore = ['a', 'and', 'the']
  str = string.split(' ').map do |n|
    if words_to_ignore.include?(n)
      n
    else
      n.capitalize
    end
  end
  str[0].capitalize!
  str.join(' ')
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.gsub!(/[^0-9A-Za-z]/, '') != nil
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  !range.include?(range.last)
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  file = File.open(file_path, "r")
  contents = ""
  file.each {|line|
    contents << line
  }
  contents.split(' ').length
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  # str_method.each { |meth| send(meth) }
  self.str_method
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  boxing_day = Time.new(2014, 12, 26)
  christmas_day = Time.new(2014, 12, 25)
  summer_holiday = Time.new(2014, 8, 25)
  spring_holiday = Time.new(2014, 5, 26)
  may_holiday = Time.new(2014, 5, 5)
  easter_monday = Time.new(2014, 4, 21)
  good_friday = Time.new(2014, 4, 18)
  nyd = Time.new(2014, 1, 1)
  bank_holidays = [boxing_day, christmas_day, summer_holiday, spring_holiday, may_holiday, easter_monday, good_friday, nyd]
  bank_holidays.include?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  day = birthday.wday
  birthday.year + (5 - day)
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  file = File.open(file_path, "r")
  contents = ''
  words_count = {}
  file.each {|line| contents << line}
  array = contents.gsub(/\W/, ' ').split(' ')
  array.each { |word| words_count[word.length] ? words_count[word.length] += 1 : words_count[word.length] = 1 }
  words_count
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
  def fizzbuzz(number)
    # def isWhole?(number, divisor)
    #   (number/divisor) == (number.to_f/divisor)
    # end
    if number == 0
      number
    elsif (isWhole?(number, 5)) && (isWhole?(number, 3))
      "fizzbuzz"
    elsif isWhole?(number, 3)
      "fizz"
    elsif isWhole?(number, 5)
      "buzz"
    else
      number
    end
  end

  def isWhole?(number, divisor)
    (number/divisor) == (number.to_f/divisor)
  end

end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
  def bottles_of_beer(number =99)
    bottle = "bottles of beer"
    wall = "on the wall"
      while number >= 0
      	number.to_s
        if number > 0
        	puts "#{number} #{bottle} #{wall}"
        	puts "#{number} #{bottle}"
        	puts "Take one down, pass it around"
        else
          puts "No #{bottle} #{wall}"
        	puts "No #{bottle}"
          puts "Go to the store and buy some more, 99 bottles of beer on the wall."
          break
        end
      	number = number- 1
      	number == 0 ? (puts "No #{bottle} #{wall}") : (puts "#{number} #{bottle} #{wall}")
      	puts ""
      end
    end

end
