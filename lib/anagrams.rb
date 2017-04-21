
def ana(word1, word2)
  verdict = "no verdict"
  vowels = ["a","e","i","o","u","y"]

  # convert to arrays, handle case, handle spaces and punctuation
  word1_arr = word1.downcase().split("").select { |letter| letter =~ /[a-z]/ }
  word2_arr = word2.downcase().split("").select { |letter| letter =~ /[a-z]/ }

  # check both inputs are valid words
  if ((word1_arr & vowels).empty?) || ((word2_arr & vowels).empty?)
    verdict = "I don't think those are all real words you silly mongoose... try again!"
  else # simple check for anagrams between two words
    if (((word1_arr & word2_arr).length) == word1_arr.length)
      verdict = "Cool, your words are an anagram!"
    else
      verdict = "Sorry, that's not an anagram"
    end
  end # END main if

  return verdict
end

# "string".index?(/\a/i) => nil
