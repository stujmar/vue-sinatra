require 'sinatra'

get '/' do
    'Hello world'
end

people_list = ['Stu', 'Ally', 'Shopcat']

get '/erb' do
    erb :index
end

get '/time' do
    code = "<%= Time.now %>"
    erb code
end