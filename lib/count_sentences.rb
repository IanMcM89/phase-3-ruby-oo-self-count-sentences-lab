require 'pry'

class String

  def sentence?
    self.include?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.include?("!")
  end

  def count_sentences
    self.split(/[.?!]\s*/).filter {|string| string != ""}.count
  end
end

String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...").count_sentences