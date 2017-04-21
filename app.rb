require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/anagrams.rb')

get('/') do
  erb(:form1)
end
