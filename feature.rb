# Back end feature test

require './lib/image_fetcher.rb'

image_fetcher = ImageFetcher.new("0a6f645d-f9d6-471e-ae37-8191c3061914")
image_fetcher.fetch
image_fetcher.info_array
image_fetcher.convert_info
image_fetcher.info_hash
image_fetcher.extract_url

# Front end feature test

require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium
visit('http://localhost:9292/')
click_button("Clearly")
click_button("Yeah go on then")