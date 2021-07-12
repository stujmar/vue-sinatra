require 'sinatra'

get '/' do
    'Hello world'
end

get '/erb' do
    erb :index
end

get '/time' do
    code = "<%= Time.now %>"
    erb code
  end