require 'sinatra'

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
pics = ["p1","p2","p3","p4","p5"]


get '/' do
  @title = "Comparative You"
  @mantra = mantras.shuffle.sample
  @text = @mantra.text
  @pic = pics.shuffle.sample
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
  @your_mantra = "Your mantra '#{params[:mantra]} has been added to our list."
  erb :mantra_submitted
  ##{ p mantras}
end



#need to pass the secret message to the params hash in the last example above