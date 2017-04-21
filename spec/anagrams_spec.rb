require('rspec')
require('anagrams')

describe('String#ana') do

  it("checks to see if all the user's words have 1 or more vowels") do
   expect("qwrt".ana()).to(eq("I don't think those are all real words you silly mongoose... try again!"))
  end

end
