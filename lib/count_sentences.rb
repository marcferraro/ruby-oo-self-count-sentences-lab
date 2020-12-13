require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split.count {|word_punctuation| word_punctuation.include?(".") || word_punctuation.include?("!") || word_punctuation.include?("?")}
  end
end