require_relative 'config/environment'

class App < Sinatra::Base

configure do 
  enable :sessions 
  set :session_secret, "secret"
end 

get '/'

erb :index

end 

post '/checkout' do 
  @session = session
  
  @user_item = params[:name]
  
  @item = params[:item]
        session["item"] = @item
  
  erb :checkout
end 

end