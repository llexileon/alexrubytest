# keep only the elements that start with an a
def select_elements_starting_with_a(array)
	array.select { |fruit| fruit[0] == "a" }
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
	vowels = ['a','e','i','o','u']
	array.select { |name| vowels.include? name[0] }
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
	array.reject { |element| element.nil? }
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
	wrong = [nil,false]
	array.reject { |element| wrong.include? element }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
	array.map{ |element| element.reverse }
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
	array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
	array.sort_by! {|name| name[-1]}
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
	first_half = (string.length / 2.0).round
	return string[0..(first_half -1)]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
	if number < 0
		return number
	else
		number = (number - number * 2)
	end
end

# turn an array of numbers into two arrays of numbers, one an array of 
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)

even = array.select{ |number| number.even? }
odd = array.select{ |number| number.odd? }
return [even,odd]

end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
palindrome = array.select{ |word| word == word.reverse } 
palindrome.length
end


# return the shortest word in an array
def shortest_word_in_array(array)
	array.min_by(&:length)
end

# return the longest word in an array
def longest_word_in_array(array)
	array.max_by(&:length)
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
	array.inject(0) {|sum, i| sum + i }
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
	array * 2
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
	symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
 average = array.inject(0.0) { |sum, el| sum + el } / array.size
 average.round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
	array.take_while { |number| number <= 5 }
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
	Hash[*array]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
	array.map { |word| word.chars }.flatten.sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
	hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
	hash.to_a.flatten.inject(0) {|sum, i| sum + i }
end
# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
 	string.gsub(/[:A-Z:]/,"")

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
	date.strftime("%d/%m/%Y")
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
	email = email.split("@").last
	email = email.split(".com").first
end

# capitalize the first letter in each word of a string, 
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
	string.capitalize!
    words_no_cap = ["and", "a", "the"]
    phrase = string.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ")
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
	special_chars = string.gsub(/[A-Za-z0-9]/, "")
	special_chars.length > 0
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
	range.max
end

# should return true for a 3 dot range like 1...20, false for a 
# normal 2 dot range
def is_a_3_dot_range?(range)
	!range.include?(range.last)
end

# get the square root of a number
def square_root_of(number)
	Math.sqrt( number ).to_f
end

# count the number of words in a file
def word_count_a_file(file_path)
	text = String.new
	File.open(file_path) { |f| text = f.read } 
    words = text.split
    words.count
end


# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
	send(:str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
	bank_holidays_2014 = ['2014-05-26','2014-08-25','2014-12-25','2014-12-26','2014-01-01','2014-04-18','2014-04-21','2014-05-05']
	date = date.to_s.split 
	bank_holidays_2014.include? date[0]
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
def your_birthday_is_on_a_friday_in_the_year(birthday)
	return birthday.strftime('%Y').to_i if birthday.friday?
	next_birthday = Time.new((birthday.year + 1),birthday.month, birthday.day)
	your_birthday_is_on_a_friday_in_the_year(next_birthday)
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
the_file=file_path
h = Hash.new
f = File.open(the_file, "r")
f.each_line { |line|
  words = line.chomp.gsub(/[^0-9A-Za-z]/, " ").split  
  wordslength = words.map {|element| element.length}  
  wordslength.each { |w|
    if h.has_key?(w)
      h[w] = h[w] + 1
    else
      h[w] = 1
    end
  }
}
h.sort{|a,b| a[1]<=>b[1]}.each { |elem|
  puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
}
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo(fizz,buzz,fizzbuzz,counter)
        if fizzbuzz == 15
                print("fizzbuzz ")
                fizzbuzz = 0
                fizz = 0
                buzz = 0
        elsif fizz == 3
                print("fizz ")
                fizz = 0
        elsif buzz == 5
                print("buzz ")
                buzz = 0
        else
                print(counter, " ")
        end
        if counter < 100
                fizzbuzz(fizz+=1, buzz+=1, fizzbuzz+=1, counter+=1)
        end
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer(number)
  number == 1 ? "#{number} bottle" : "#{number} bottles"
end
 
@count = 99

@count.downto(1)  {
puts <<BEERSONG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   {bottles(@count)} of beer on the wall
   {bottles(@count)} of beer
   Take one down, pass it around
   {bottles(@count -= 1)} of beer on the wall
BEERSONG
}
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end
