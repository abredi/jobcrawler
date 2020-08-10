require 'rspec'
require_relative '../lib/scrapper'

RSpec.describe Scrapper do
  let!(:ethiojobs) { EthioJobs.new }
  subject { Scrapper.new(ethiojobs) }

  context 'when first created' do
    it 'should be instance of Scrapper class' do
      expect(subject).to be_instance_of(Scrapper)
    end

    it 'should return the whole document' do
      expect(subject.scrap.css('html')[0].name).to eql('html')
    end

    it 'the base document should not be blank' do
      expect(subject.scrap.blank?).to be false
    end
  end
end
