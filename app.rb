require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/name?') do
  name_start = params.fetch('input_name')
  my_pet = Tamagotchi.new(name_start)
  erb(:status)
end
