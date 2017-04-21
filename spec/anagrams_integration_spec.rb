require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('', {:type => :feature}) do
#   it('processes...') do
#     visit('/')
#     fill_in('@var', :with => 'string')
#     click_button('buttonname')
#     expect(page).to have_content('string')
#   end
# end
