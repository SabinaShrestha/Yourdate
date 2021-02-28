require 'mechanize'
require 'pry'
agent = Mechanize.new
binding.pry
page = agent.get('https://google.com/')
