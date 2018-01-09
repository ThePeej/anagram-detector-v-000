require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(phrase)
    anagrams = []
    phrase.each_with_index do |word,index|
      binding.pry
      if word.split("").sort == @word.split("").sort
        anagrams << word
        # binding.pry
      end
    end
    anagrams
  end

end
