require 'sinatra'
#shotgun sends this to port 9393

get '/' do
  @title = "Comparative You"
  erb :index
end

get '/about' do
  erb :about
end

get '/submit' do
  erb :submit
end

post '/submit' do
  "You said '#{params[:mantra]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  "Your secret coded message is '#{params[:secret].reverse.upcase}'"
end

get '/decrypt/:secret' do
  params[:secret].reverse.downcase
end

#need to pass the secret message to the params hash in the last example above