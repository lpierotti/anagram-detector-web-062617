require "pry"
# Your code goes here!
class Anagram 

	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def to_param(word)
		word.split("").sort
		#binding.pry
	end


	def match(anagrams)
		search_word = to_param(self.word)
		anagrams.select do |word|
			possible_match = to_param(word)
			search_word == possible_match
		end
	end
end