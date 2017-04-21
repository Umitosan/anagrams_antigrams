require('rspec')
require('title_case')

 describe('String#method') do
   it("thing the program does") do
     expect("".method('element')).title_case).to(eq("stuff"))
   end
 end
