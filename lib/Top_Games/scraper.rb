require 'pry'
require 'nokogiri'
require 'open-uri'


class Scraper

    def self.get_page
        Nokogiri::HTML(open("https://www.metacritic.com/browse/games/score/metascore/all/pc", 'User-Agent' => 'chrome'))
    end

    def self.make_games
        doc = get_page.css("ol.list_products li.game_product")
        doc.each do |list_item|
            game = list_item.css("div.product_wrap div.product_title a")#.first["href"]
            binding.pry
        end
    end
    # need to scrape a base url (beginning point) to populate list of games
    # each game should be made into a game object and have a url to its individual game page
    # this game URL will be scrapped to populate game object variables to later be pushed to the CLI for display back to the user
    # the scraper should handle all scraping aspects
    # the game object should only be a holder for information
    # the CLI will handle all 


end

Scraper.make_games