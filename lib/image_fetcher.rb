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

  def info_hash
    @info_hash
  end

  def fetch
    @info_array = JSON.parse(RestClient.get('https://api.thecatapi.com/v1/images/search', :headers => { 'x-api-key' => @key}))
  end

  def convert_info
    @info_hash = @info_array[0]
  end

  def extract_url
    @image_url = @info_hash["url"]
  end

end