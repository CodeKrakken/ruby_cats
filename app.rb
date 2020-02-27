require 'sinatra'
set :session_secret, 'super secret'

class RubyCats < Sinatra::Base

  get '/' do
    "Greetings my friend. Care for a cat?"
  end

end