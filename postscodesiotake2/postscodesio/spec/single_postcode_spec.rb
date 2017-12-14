require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.single_postcode_service
      @postcodesio.get_single_postcode('se96rj')
    end

    it 'should respond with a status message of 200' do
      expect(@postcodesio.get_status_code_from_body_response).to eq 200
    end

    it 'should respond with a hash of results' do
      expect(@postcodesio.get_result).to be_kind_of(Hash)
    end

    it 'should respond with the postcode as a string and 7-8 characters long' do
      expect(@file.get_postcode('cr81ez')).to be_kind_of(String)
      expect(@file.get_postcode('cr81ez').length).to be_between(7,8).inclusive
    end

  end
end
