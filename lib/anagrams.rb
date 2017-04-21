
def ana(word1, word2)
  verdict = "no verdict"
  vowels = ["a","e","i","o","u","y"]

  # reduce all chars to lower case
  word1 = word1.downcase()
  word2 = word2.downcase()

  # check both inputs are valid words
  if (((word1.split("") & vowels).empty?) || ((word2.split("") & vowels).empty?))
    verdict = "I don't think those are all real words you silly mongoose... try again!"
  else # simple check for anagrams between two words
    if (((word1.split("") & word2.split("")).length) == word1.length)
      verdict = "Cool, your words are an anagram!"
    else
      verdict = "Sorry, that's not an anagram"
    end
  end # END main if

  return verdict
end

# "string".index?(/\a/i) => nil
