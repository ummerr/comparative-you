require 'sinatra'
# require 'data_mapper'
#shotgun sends this to port 9393


# DataMapper skeleton code.  Read more!
# DataMapper::setup(:default, "sqllite3://#{Dir.pwd}/recall.db")

# class Mantra
#   include DataMapper::Resource
#   property :id, Serial
#   property :content, Text, :required => true
# end

# DataMapper.finalize.auto_upgrade!

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
  "You said '#{params[:mantra]}.'  Quite a good mantra."
  #do i need to add some Mantra.new(params[:mantra] stuff here?)
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