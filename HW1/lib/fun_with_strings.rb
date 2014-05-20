module FunWithStrings
  def palindrome?
    word = self.downcase.gsub(/[\W]/,"")
    word == word.reverse
  end

  def count_words
    return {} if self.empty?
    Hash[self.downcase.gsub(/[\W]/, " ").split(" ").group_by { |word| word }.map{ |word, group|  [word, group.length] }] 
  end

  def anagram_groups
    return [] if self.empty? 
    self.gsub(/[\W]/, " ").split(" ").group_by{ |word| word.downcase.chars.sort }.values
  end
end

class String
  include FunWithStrings
end

