require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form1)
end

get('/analize') do
  # @phrase1 = params_fetch('phrase1')
  # @phrase2 = params_fetch('phrase2')
  # @findings = ana(@phrase1, @phrase2)
  @findings = ana(params_fetch('phrase1'), params_fetch('phrase2'))
  erb(:output)
end
