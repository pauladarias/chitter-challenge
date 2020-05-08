require 'sinatra/base'

class Chitter < Sinatra::Base
  enable :sessions

  get '/' do 
    erb :index
  end 

  post '/' do 
    session[:peep] = params[:peep]
    redirect '/peeps'
  end 

  get '/peeps' do 
    @peep = session[:peep]
    erb :peeps
  end 

  run if app_file == $0
end 