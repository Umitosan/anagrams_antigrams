
def ana(word1, word2)
  verdict = ""
  vowels = ["a","e","i","o","u","y"]

  if (((word1.split("") & vowels).empty?) || ((word2.split("") & vowels).empty?))
    verdict = "I don't think those are all real words you silly mongoose... try again!"
  elsif
    verdict = "yup, those are words"
  else
    verdict = "errors yo"
  end
  
  return verdict
end



# "string".index?(/\a/i) => nil
