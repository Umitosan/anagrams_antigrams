require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/anagrams.rb')

get('/') do
  erb(:form1)
end

get('/check') do
  @final_verdict = params_fetch(ana('phrase1', 'phrase2'))
  erb(:output)
end
