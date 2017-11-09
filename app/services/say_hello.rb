require_relative "game"
require 'rubygems'
require 'nokogiri'
require 'open-uri'


class SayHello
def get_the_email_of_a_townhal_from_its_webpage(http://annuaire-des-mairies.com/val-d-oise.html)
	page = Nokogiri::HTML(open(url))
	email = page.css("table tr td table tr td table tr td table tr td.style27 p.Style22")[5]  
    email.text
end
end


