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


