require 'optimizely'
require 'httparty'
class PagesController < ApplicationController
	
	def landing
		@variation_key = optimizely.activate('test', 11560980958)
		url = 'https://cdn.optimizely.com/json/11560980958.json'
		datafile = HTTParty.get(url).body
		@variation_key = optimizely.activate('test', 11560980958)
	end
end