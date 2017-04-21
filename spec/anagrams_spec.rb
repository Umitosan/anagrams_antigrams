require('rspec')
require('anagrams')

describe('String#ana') do

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
   expect(ana("Hamlet?","Am leth!")).to(eq("Guess what, your words together form a palindrome!"))
  end

end
