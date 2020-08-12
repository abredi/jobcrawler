class Scrapper
  def initialize(site)
    @site = site
    @page = 1
  end

  def scrap
    Nokogiri::HTML(URI.open("#{@site.base_url}/?action=search&page=#{@page}&view=list"))
  end

  def next_page
    @page += 1
    scrap
  end
end
