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
    #binding.pry
    n=1
    if self.include?(". ")
        n= n+ self.split(". ").length-1
    end
    if self.include?("? ")
      n= n+ self.split("? ").length-1
    end
    if self.include?("! ")
      n= n+ self.split("! ").length-1
    end
    if self.include?("! ") == false && self.include?("? ")== false && self.include?(". ") == false
      return 0
    end
    n



  end
end
