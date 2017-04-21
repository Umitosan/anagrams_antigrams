require('rspec')
require('anagrams')

describe('ana') do

  it("checks to see if the user's word have 1 or more vowels") do
   expect(ana("qwrt", "")).to(eq("I don't think those are all real words you silly mongoose... try again!"))
  end

  it("checks to see if both the user's words have 1 or more vowels") do
   expect(ana("real", "qwrt")).to(eq("I don't think those are all real words you silly mongoose... try again!"))
  end

  it("checks to see if all the user's 2 words are anagrams") do
   expect(ana("listen","silent")).to(eq("Cool, your words are an anagram!"))
  end

  it("is case-insensitive") do
   expect(ana("Listen","Silent")).to(eq("Cool, your words are an anagram!"))
  end

  it("ignores all spaces and puncuation") do
   expect(ana("Hamlet?","Am leth!")).to(eq("Cool, your words are an anagram!"))
  end

  it("checks if the words are a palindrome") do
   expect(ana("Top", "spot!")).to(eq("Guess what, your words together form a palindrome!"))
  end

  it("checks if the words an antigram") do
   expect(ana("mango", "butter")).to(eq("Facinating, your words are antigrams!"))
  end

  it("checks for anagrams, antigrams and palindrome, on a set of strings longer than 1 word each") do
   expect(ana("qwertyu ioppo", "iuyt rewq")).to(eq("Guess what, your words together form a palindrome!"))
  end

  # it("checks for anagrams, antigrams and palindrome, on a set of strings longer than 1 word each") do
  #  expect(ana("The public art galleries", "Large picture halls, I bet")).to(eq("Cool, your words are an anagram!"))
  # end

  # it("checks for anagrams, antigrams and palindrome, on any string with 2 or more words") do
  #  expect(ana("Was it Eliot's toilet I saw?")).to(eq("Guess what, your words together form a palindrome!"))
  # end

end
