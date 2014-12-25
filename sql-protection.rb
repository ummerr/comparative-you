 post '/thing' do
    @thing = Thing.new(strong_params)

 def strong_params
    params[:thing].each_with_object({}) do |pair,hash|
      hash[html_safe(pair[0])] = html_safe(pair[1])
    end
  end

  def html_safe(text)
    Rack::Utils.escape_html(text)
  end
