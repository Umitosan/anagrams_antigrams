class String
  define_method(:ana) do
    verdict = ""
    # vowels = ["a","e","i","o","u","y"]
    # "string".index?(/\a/i) => nil

    if (self.include?("a") || self.include?("e") || self.include?("i") || self.include?("o") || self.include?("u") || self.include?("y"))
      verdict = "yup, those are words"
    else
      verdict = "I don't think those are all real words you silly mongoose... try again!"
    end

    return verdict
  end
end
