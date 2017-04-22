
def ana(word1, word2)
  word1 = word1.to_s
  word2 = word2.to_s
  verdict = "no verdict"
  vowels = ["a","e","i","o","u","y"]
  all_words_valid = true
  working_arr = []
  all_words_clean_arr = []

  # create arrays that:  reduce case, eliminate spaces and punctuation
  letters1_arr = word1.downcase().split("").select { |letter| letter =~ /[a-z]/ }
  letters2_arr = word2.downcase().split("").select { |letter| letter =~ /[a-z]/ }

  # check if all words are valid, populate all_words_clean_arr
  working_arr = (word1 + " " + word2).downcase().split()
  working_arr.each do |word|
    clean_word_arr = (word.split("").select { |letter| letter =~ /[a-z]/ })
    all_words_clean_arr.push(clean_word_arr.join)
    if ((clean_word_arr & vowels).empty? == true)
      all_words_valid = false
    end
    all_words_valid
  end

  if (all_words_valid == false)
    verdict = "I don't think those are all real words you silly mongoose... try again!"
  elsif (letters1_arr.sort == letters2_arr.sort) # check 2 phrases for anagram
      verdict = "Cool, your words are an anagram!"
  elsif ((letters1_arr + letters2_arr) == (letters1_arr + letters2_arr).reverse())  # check 2 phrases for palindrome
    verdict = "Guess what, your words together form a palindrome!"
  elsif ((letters1_arr & letters2_arr).empty?) # check 2 phrases for antigram
    verdict = "Facinating, your phrases are antigrams!"
  else # nothing matches
    verdict = "your words aren't that special after all :("
  end # main if

  return verdict
end
