class String
  define_method(:ana) do
    verdict = ""
    vowels = ["a","e","i","o","u","y"]
    if (self.split("") & vowels).empty?
      verdict = "I don't think those are all real words you silly mongoose... try again!"
    elsif
      verdict = "yup, those are words"
    else
      verdict = "errors yo"
    end
    return verdict
  end
end


# "string".index?(/\a/i) => nil
