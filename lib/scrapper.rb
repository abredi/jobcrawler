class Scrapper
    def initialize site
        @site = site
    end

    def scrap
        @doc = Nokogiri::HTML(URI.open(site.base_url))
    end

end
