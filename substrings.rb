require 'pry'

def substrings(reference,dictionary)
  ref_array = reference.downcase.split(" ")

  result = dictionary.reduce(Hash.new(0)) do |my_hash,dict_word|
    
    ref_array.each do |ref| 
      if ref.include?(dict_word) 
        my_hash[dict_word] +=1
      end
    end
    next(my_hash)

  end
  
  puts "computed.....\n#{reference}\nresult.....\n#{result}"
  return result

end

dictionary = [
  "below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"
]
puts "Add words to the dictionary. Separate words using a space." 
print "To add no words, press enter without typing.\nDictionary: #{dictionary}\n"
add_to_dictionary = gets.chomp.split(" ")
add_to_dictionary.each {|word| dictionary.push(word.downcase)}
print "#{dictionary}\n"
puts "Enter your reference string:"
reference = gets.chomp
valid_substrings = substrings(reference,dictionary)