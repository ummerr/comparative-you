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

class Mantra
  attr_reader :text

  def initialize(text)
    @text = text
  end
end

m1 = Mantra.new('Give yourself permission to be shit and learn')
m2 = Mantra.new('No one can make you feel inferior without your consent.')
m3 = Mantra.new('Get some fresh air and relax. Life is good.')

mantras = [m1,m2,m3]

get '/' do
  @title = "Comparative You"
  @mantra = mantras.shuffle.sample
  @text = @mantra.text
  erb :index
end

get '/about' do
  erb :about
end

get '/submit' do
  erb :submit
end

post '/submit' do
  mantras << Mantra.new(params[:mantra])
  "You said '#{params[:mantra]}.'  Quite a good mantra. #{ p mantras}"
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