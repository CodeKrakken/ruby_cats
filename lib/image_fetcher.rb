require 'rest-client'
require 'JSON'

class ImageFetcher

  def initialize(key)
    @key = key
  end

  def key
    @key
  end

  def image_info
    @image_info
  end

  def fetch
    @image_info = JSON.parse(RestClient.get('https://api.thecatapi.com/v1/images/search', :headers => { 'x-api-key' => @key}))
  end

end