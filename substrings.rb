# Take a string and an array of strings as input
# Output a hash where they keys are substrings
# From the array that match the input string
# And the values are the amount of times it matches

def substrings(word_string, dictionary)
	results = {}
	match_count = 0
	word_array = word_string.split(" ")
	dictionary.each do |match_string|
		word_array.each do |word|
			word.downcase!
			match_count += 1 if (word.include?(match_string))
		end
		if match_count > 0
			results[match_string] = match_count
		end
		match_count = 0
	end
	return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Test case
# string = "Howdy partner, sit down! How's it going?"
# puts substrings(string, dictionary)

puts ""
puts "Enter a string to compare to our dictionary"
the_string = gets.chomp
puts ""
puts "The dictionary we are comparing to is:"
dictionary.each do |word|
	print "#{word} "
end
puts ""
puts ""
puts "---Substring Matches---"
puts substrings(the_string, dictionary)
puts ""