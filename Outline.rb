    # need to scrape a base url (beginning point) to populate list of games
    scraper.rb
    # each game should be made into a game object and have a url to its individual game page
    game.rb
    # this game URL will be scrapped to populate game object variables to later be pushed to the CLI for display back to the user
    game < scraper
    # the scraper should handle all scraping aspects
    # the game object should only be a holder for information
    # the CLI will handle all inputs and outputs