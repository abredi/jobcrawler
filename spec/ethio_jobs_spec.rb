require 'rspec'
require_relative '../lib/ethiojobs'
require_relative '../lib/scrapper'

RSpec.describe EthioJobs do
    context 'when first created' do
      it 'should be instance of scrapper' do
          expect(subject).to be_instance_of(EthioJobs)
      end
    end
end