require 'rest-client'
require 'JSON'

class ImageFetcher

  def initialize(key)
    @key = key
  end

  def key
    @key
  end

  def info_array
    @info_array
  end

  def fetch
    @info_array = JSON.parse(RestClient.get('https://api.thecatapi.com/v1/images/search', :headers => { 'x-api-key' => @key}))
  end

end