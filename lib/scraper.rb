<<<<<<< HEAD
require 'nokogiri'
require 'httparty'

class Scraper

	attr_reader :results, :name
	@@scrapers = Array.new
	def initialize (url, name)
		@position = 0 # position in results list
		@url = url
		@name = name
		@results = Array.new
		@@scrapers << self
=======
################################################################################
# Copyright Carter Van Ekeren - 2019								    #
# Email : vanek015@umn.edu
# File : scraper.rb								         #
################################################################################
require 'nokogiri'
require 'httparty'
require 'launchy'
################################################################################
# 'Abstract' Webscraper class -                                                #
# All webscrapers must have the functionality conatined in this class          #
################################################################################
class Scraper
	# @name : Name of the WebScraper
	# @scrape_results : Contains the objects containing the information we want
	# after we call scrape()
	attr_reader :name, :scrape_results
	def initialize(url, name)
		@position = 0 # position in results list
		@url = url
		@name = name
		@scrape_results = Array.new
>>>>>>> refactor/scraper
	end

	def setUp()
		page = HTTParty.get(@url)
		@parsed_page = Nokogiri::HTML(page)
	end

	def getScrapers()
		@@scrapers
	end

<<<<<<< HEAD
=======
	def show_all()
		@position = 0
		while @position < 5 do
			show_five()
		end
	end

	###########################################################################
	# 'Abstract' methods                                                      #
	###########################################################################
	def scrape()
	end

	def show_five()
	end

	def visitPage(index)
	end


>>>>>>> refactor/scraper
end