require 'sinatra'
#shotgun sends this to port 9393

get '/' do
  @title = "Comparative You"
  erb :index
end

get '/about' do
  erb :about
end


#testing routes/logic not for production
get '/hello/:name/' do
  "hello there #{params[:name].upcase} "
end

get '/hello/:name/:city' do
  "hello there #{params[:name].upcase} from #{params[:city].upcase}"
end

# no idea how this works, but references the splat argument
# so if more than one thing is passed from the url, it can hold all of them via the '*' wildcard
get '/more/*' do
  params[:splat]
end
#