require 'spec_helper'

describe Bleepy::Helpers do
  describe '::BASE_URL' do
    it 'returns api url' do
      expect(Bleepy::Helpers::BASE_URL)
        .to eq('http://api.take.io/rest/1.0/')
    end
  end
end
