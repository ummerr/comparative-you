require 'sinatra'

get '/' do
  @title = "This is a test title"
  erb :index
end