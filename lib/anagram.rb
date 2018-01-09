require 'pry'

class Anagram

  attr_accessor :word

  @anagrams = []

  def initialize(word)
    @word = word
  end

  def match(phrase)
    phrase.each_with_index do |word,index|
      if word.sort == @word.sort
        @anagrams << phrase[index]
      end
    end
    @anagrams
  end

end
