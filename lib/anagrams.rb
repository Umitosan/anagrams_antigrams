
def ana(word1, word2)
  verdict = "no verdict"
  vowels = ["a","e","i","o","u","y"]

  # create arrays that:  reduce case, eliminate spaces and punctuation
  letters1_arr = word1.downcase().split("").select { |letter| letter =~ /[a-z]/ }
  letters2_arr = word2.downcase().split("").select { |letter| letter =~ /[a-z]/ }

  # create arrays that preserve the word structure
  # words1_arr =
  # words2_arr =

  # check words are valid
  if ((letters1_arr & vowels).empty?) || ((letters2_arr & vowels).empty?)
    verdict = "I don't think those are all real words you silly mongoose... try again!"
  elsif (((letters1_arr & letters2_arr).length) == letters1_arr.length) # check 2 words for anagram
      verdict = "Cool, your words are an anagram!"
    if ((letters1_arr + letters2_arr) == (letters1_arr + letters2_arr).reverse())  # check 2 words for palindrome
      verdict = "Guess what, your words together form a palindrome!"
    end
  elsif ((letters1_arr & letters2_arr).empty?) # check 2 words for antigram
    verdict = "Facinating, your words are antigrams!"
  else # nothing matches
    verdict = "your words aren't that special after all :("
  end # main if

  return verdict
end
