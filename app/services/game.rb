class Game
def get_all_the_urls_of_val_doise_townhalls(url)
	list_mail = Hash.new()
	page = Nokogiri::HTML(open(url))
	page.css(".lientxt").each do |town|
		town_name = town.text.downcase
		proper_town_name = town_name.upcase
		town_name = town_name.split(' ').join('-')
		url = "http://annuaire-des-mairies.com/95/#{town_name}.html"
		list_mail[proper_town_name.to_sym] = get_the_email_of_a_townhal_from_its_webpage(url)
	end
	list_mail.each do |key, value|
			puts "#{key}: #{value} "
	end

end
get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")
end