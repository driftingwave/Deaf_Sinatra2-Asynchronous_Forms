get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/grandma' do

  if params[:user_input] == "OKAY GRANDMA, I HAVE TO GO NOW!"
    "BYE SONNY!"
    
  elsif params[:user_input] != "" &&
        params[:user_input] == params[:user_input].upcase
    @grandma = 'NOT SINCE 1937!'
    if request.xhr?
      erb :partial, layout: false
    else
      erb :index
    end

  else
    @grandma = "SPEAK UP HONEY, I CAN'T HEAR YOU!"
    if request.xhr?
      erb :partial, layout: false
    else
      erb :index
    end
  end

end
