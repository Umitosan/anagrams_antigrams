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

end
