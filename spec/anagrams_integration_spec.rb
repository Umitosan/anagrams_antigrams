# require('capybara/rspec')
# require('./app')
# require('launchy')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the form path', {:type => :feature}) do
#   it('processes the users phrases and returns the findings') do
#     visit('/')
#     fill_in('phrase1', :with => 'listen')
#     fill_in('phrase2', :with => 'silent')
#     click_button('analize')
#     expect(page).to have_content('Cool, your words are an anagram!')
#   end
# end
