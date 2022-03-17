require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do 
  "hello ruby hello, world #{(1..48).to_a.sample}"
end

get '/hello.php' do
  "I am not php"
end


get '/cats' do
  "all cats"
end

# /cats/123
get '/cats/:id' do
  "hello #{params[:id]} cat"
end



