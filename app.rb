require 'sinatra'
set :session_secret, 'super secret'

class RubyCats < Sinatra::Base
  before do
    @image_fetcher = ImageFetcher.new('0a6f645d-f9d6-471e-ae37-8191c3061914')
  end

  get '/' do
    erb :index
  end

  get '/fetch_image' do
    @image_fetcher.fetch
    @image_fetcher.convert_info
    @image_fetcher.extract_url
    "<img src=image_fetcher.image_url>
    <br>
    Another?"
  end

end