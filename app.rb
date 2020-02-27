require 'sinatra'
set :session_secret, 'super secret'

class RubyCats < Sinatra::Base

  get '/' do
    "Hello World!"
  end

end