require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get '/' do

  url = "http://index1.homeflow.co.uk/properties/4631183?api_key=77467477edfd2689cd77796a2c4b019f"
  @property_results = HTTParty.get(url) #this is capitalised
  @result = @property_results['result']

  erb(:about)

  # erb :index
end
