require 'sinatra'
#set :session_secret, 'super secret'

get '/' do
  "hello world!"
end

get '/secret' do
  "You can totally do this!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:index_form)
end
