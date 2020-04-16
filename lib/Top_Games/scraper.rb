require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative '../Top_Games/Game.rb'


class Scraper

    BASE_URL = "https://www.metacritic.com/browse/games/score/metascore/all/pc"

    def self.get_page
        Nokogiri::HTML(open(BASE_URL, 'User-Agent' => 'chrome'))
    end

    def self.make_games
        doc = get_page.css("ol.list_products li.game_product")
        doc.each do |page|
            Game.new_from_page(page)
        end
    end

end

Scraper.make_games