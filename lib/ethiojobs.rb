require 'nokogiri'
require 'open-uri'
require_relative 'scrapper'

class EthioJobs < Scrapper
  attr_accessor :base_url
  attr_reader :current_page
  def initialize
    @base_url = 'http://www.ethiojobs.net/search-results-jobs'
    super(self)
    snatch_data
  end

  def next_page
    super
    snatch_data
  end

  def snatch_data
    @current_page = []
    scrap.css('table .listing-section').each do |link|
      @current_page.push(
        {
          title: link.css('h2 a').text.strip,
          link: link.css('h2 a').first['href'].strip,
          company: link.css('.company-name').text.strip,
          company_link: link.css('.company-name').first['href'].strip,
          work_place: link.css('.work-palce').text.strip,
          level: link.css('.pull-left > span:nth-child(7)').text.strip,
          date: link.css('.pull-left > span:nth-child(9)').text.strip,
          detail: link.css('.show-brief').text.strip
        }
      )
    end
  end
end
