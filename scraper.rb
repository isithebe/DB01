require 'bundler/setup'
require 'mechanize'
require 'date'
require 'scraperwiki'

agent = Mechanize.new
page = agent.get("http://www.premiereclasse.fr")

links = page.at("mailto:")
