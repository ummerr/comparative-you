get '/' do
  pics = ["p1","p2","p3","p4","p5"]
  @mantra = Mantra.all.shuffle.sample
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
  Mantra.create(params[:mantra])
  @your_mantra = "Your mantra '#{params[:mantra]} has been added to our list."
  erb :mantra_submitted
  ##{ p mantras}
end


