require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions



get '/' do 
  @name = "gian"
  @user = session[:thankyou910147]
  erb :index, layout: :my_layout
end


get '/hello/:name' do 
  @name = params[:name]
  erb :index, layout: :my_layout
end

get '/form' do
  erb :form
end

post '/form' do
  h = params[:height].to_f / 100 
  w = params[:weight].to_f    
                            # 從網路上抓下來的東西全都是字串s
  bmi = (w / (h * h) ).round(2)
  # BMI = 111
  

  erb :result, locals: {result: bmi}
end 


get '/login' do
  erb :login
end


post '/login' do
  username = params[:username]
  password = params[:password]
  
  if username == "gian910147" && password == "123"
    session[:thankyou910147] = username
  end

  redirect '/'
end


# get '/hello.php' do
#   "I am not php"
# end


# get '/cats' do
#   "all cats"
# end

# # /cats/123
# get '/cats/:id' do
#   "hello #{params[:id]} cat"
# end



