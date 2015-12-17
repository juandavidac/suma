require 'sinatra'
enable :sessions
get '/' do
  session[:suma]=0
  erb :index
end

get '/suma' do
  if session[:suma]>=0
  session[:suma]+=1
  erb :index
  end
end
