require 'rest-client'
require 'JSON'

class Image

  def initialize(key)
    @key = key
  end

  def key
    @key
  end

  def fetch
    JSON.parse(RestClient.get('https://api.thecatapi.com/v1/images/search', :headers => { 'x-api-key' => @key}))
  end

end