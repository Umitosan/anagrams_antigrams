require('./lib/anagrams')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form1)
end

get('/analize') do
  @out1 = params.fetch('phrase1')
  @out2 = params.fetch('phrase2')
  @findings = ana(@phrase1,@phrase2)
  erb(:output)
end
