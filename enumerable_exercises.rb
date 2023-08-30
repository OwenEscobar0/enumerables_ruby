def display_current_inventory(inventory_list)
  inventory_list.each { |key, value| puts "#{key}, quantity: #{value}"}
end
inventory_list ={ "apples" => 1, "bananas" => 2, "oranges" => 7}
 display_current_inventory(inventory_list)



def display_guess_order(guesses)

   guesses.each_with_index {|guess, index| puts "Guess ##{index +1} is #{guess}"}

end

guesses = ['cookies' , 'cake', 'ice cream']
display_guess_order(guesses)


def find_absolute_values(numbers)
    numbers.map{|num| num.abs}

end
numbers = [-1,2,3,4,5]
 find_absolute_values(numbers)


def find_low_inventory(inventory_list)
  inventory_list.select {| key, value | value < 4}
end
inventory_list = { "apples" => 1, "peaches" => 4,"bananas" =>3, "oranges" => 7}
 find_low_inventory(inventory_list)


def find_word_lengths(word_list)
   word_list.reduce(Hash.new(0)) do | key, index |
    key[index] = index.length
    key 
  end
end
animal = [ 'cat', 'horse', 'rabbit', 'deer']
 find_word_lengths(animal)


def coffee_drink?(drink_list)
  drink_list.include?("coffee") || drink_list.include?("espresso")
  
end
drink_list = ["coffee", "water", "tea", "espresso"]
coffee_drink?(drink_list)


def correct_guess?(guess_list, answer)
  guess_list.any? do |num|
     num < answer
  end
  
end
guess_list =[6,7,8,9]
correct_guess?(guess_list, 5)


def twenty_first_century_years?(year_list)
  year_list.all?{|n|  n.between?(2001, 2100)}
  
end
year_list =[2004, 2002, 2099, 2080]
twenty_first_century_years?(year_list)

def correct_format?(word_list)
  word_list.none? do |name|
     name == name.upcase
  end
  # use #none? to return true when none of the words in the word_list (array) are in upcase
end
word_list =["Pepsi", "Coke", "Dr. Pepper"]
correct_format?(word_list)

def valid_scores?(score_list, perfect_score)
   score_list.one?{| key, value| value == perfect_score}
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
end
score_list = { easy_to_read: 10, uses_best_practices: 8, clever:7}
perfect_score = 10
valid_scores?(score_list, perfect_score)
