require('sinatra')
require('sinatra/reloader')
require('./lib/method')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show') do
  @number= params.fetch('number').to_i().prime_numbers()
  erb(:show)
end
