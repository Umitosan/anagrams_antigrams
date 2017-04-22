require('./lib/anagrams')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/analize') do
  @phrase1 = params.fetch('phrase1')
  @phrase2 = params.fetch('phrase2')
  @findings = ana(@phrase1,@phrase2)
  erb(:output)
end
