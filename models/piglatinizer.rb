class PigLatinizer

attr_reader :name

WORD = []

@@params = {
  'word1' => "Joe",
  'word2' => "steven",
  'word3' => "alex"
}


def initialize
  @name = @@params['word1']
  WORD << self
end





def self.all
  WORD
end

def piglatinize(str)
  letters = ('a'..'z').to_a

vowels = %w[a e i o u]

consonants = letters - vowels

str2 = str.gsub(/\w+/) do|word|
    if vowels.include?(word.downcase[0])
      word+'way'
    elsif (word.include? 'qu')
      idx = word.index(/[aeio]/)
      word = word[idx, word.length-idx] + word[0,idx]+ 'ay'
    else
      idx = word.index(/[aeiou]/)
      word = word[idx, word.length-idx] + word[0,idx]+'ay'
    end
end
end

def to_pig_latin(sentence)
  sentence.split(" ").map { |word| piglatinize(word) }.join(" ")
end



end
