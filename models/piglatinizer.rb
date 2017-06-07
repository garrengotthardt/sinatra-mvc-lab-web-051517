class  PigLatinizer
  attr_accessor :words

  # def initialize(words)
  #   @words = words
  # end

  def piglatinize(word)
    vowels = ["a","e","i","o","u"]
      if !vowels.include?(word.downcase[0]) && !vowels.include?(word.downcase[1]) && !vowels.include?(word.downcase[2])
        first_three_letters = word.slice!(0..2)
        piglatinized = word << first_three_letters << "ay"
      elsif !vowels.include?(word.downcase[0]) && !vowels.include?(word.downcase[1])
        first_two_letters = word.slice!(0..1)
        piglatinized = word << first_two_letters << "ay"
      elsif !vowels.include?(word.downcase[0]) && vowels.include?(word.downcase[1])
        first_letter = word.slice!(0)
        piglatinized = word << first_letter << "ay"
      elsif vowels.include?(word.downcase[0])
        piglatinized = word << "way"
      end
  end

  def to_pig_latin(string)
    string.split.map { |word| piglatinize(word) }.join(" ")
  end

end
