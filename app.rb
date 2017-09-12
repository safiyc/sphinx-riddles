require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require ('./lib/riddles')


  get('/') do
    erb(:input)
  end
  post('/output') do
    @ans1 = params.fetch("question1")
    @ans2 = params.fetch("question2")
    @ans3 = params.fetch("question3")
    riddle = Riddle.new(@ans1, @ans2, @ans3)
    @string_to_display =  riddle.result
    erb(:output)
  end
