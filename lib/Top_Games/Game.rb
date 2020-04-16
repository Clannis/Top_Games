require 'pry'

class Game

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :title, :url, :developer, :genres, :rating, :official_site, :summary, :esrb_descriptors

    def self.new_from_page(page)
        self.new(
            page.css("div.product_wrap div.product_title a").text.strip,
            "https://www.metacritic.com/browse/games/score/metascore/all/pc#{page.css("div.product_wrap div.product_title a").first["href"]}/details"
        )
    end

    def initialize(title = nil, url = nil, developer = nil, genres = nil, rating = nil, official_site = nil, summary = nil, esrb_descriptors = nil)
        @title, @url, @developer, @genres, @rating, @official_site, @summary, @esrb_descriptors = title, url, developer, genres, rating, official_site, summary, esrb_descriptors
        @@all << self
    end

    def developer
        @developer ||= 
    end

    def genres
        @genres ||= 
    end

    def rating
        @rating ||= 
    end

    def official_site
        @official_site ||= 
    end

    def summary
        @summary ||= 
    end

    def esrb_descriptors
        @esrb_descriptors ||= 
    end

end