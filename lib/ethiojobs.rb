require_relative 'scrapper'
class EthioJobs < Scrapper
    attr_accessor :base_url
    def initialize
        base_url = 'http://www.ethiojobs.net/'
    end
end
