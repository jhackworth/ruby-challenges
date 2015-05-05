# Scrape website to get ingredients only

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

list = doc.css('.components-item')

list.each { |i| puts i.inner_text.strip! }