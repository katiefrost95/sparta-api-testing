require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a multiple postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.multiple_postcode_service
      @postcodesio.get_multiple_postcodes(["cr81ez", "b296au"])
    end

    b = ["cr81ez" "b296au"]

    it 'should respond with a hash of multiple results' do
      expect(@postcodesio.get_m_result).to be_kind_of(Hash)
    end

    it 'should respond with a status message of 200' do
      expect(@postcodesio.get_status_code).to eq 200
    end

    # it 'should respond with the postcode as a string and 7-8 characters long' do
    #   expect(@postcodesio.get_postcode('cr81ez')).to be_kind_of(String)
    #   expect(@postcodesio.get_postcode('cr81ez').length).to be_between(7,8).inclusive
    # end

  end
end

# x = MultiPostcodesService.new
# puts x.get_status_code
