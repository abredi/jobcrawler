require 'rspec'
require_relative '../lib/scrapper'

RSpec.describe Scrapper do
  context 'when first created' do
    it 'should be instance of Scrapper class' do
      expect(subject).to be_instance_of(Scrapper)
    end
  end
end
