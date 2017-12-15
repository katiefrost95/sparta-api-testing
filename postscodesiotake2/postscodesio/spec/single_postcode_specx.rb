require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.single_postcode_service
      @postcodesio.get_single_postcode('se96rj')
    end

    a = "cr81ez"

    it 'should respond with a status message of 200' do
      expect(@postcodesio.get_status_code_from_body_response).to eq 200
    end

    it 'should respond with a hash of results' do
      expect(@postcodesio.get_result).to be_kind_of(Hash)
    end

    it 'should respond with the postcode as a string and 7-8 characters long' do
      expect(@postcodesio.get_postcode('cr81ez')).to be_kind_of(String)
      expect(@postcodesio.get_postcode('cr81ez').length).to be_between(7,8).inclusive
    end

    it 'should respond with quality as an integer between 1 and 9' do
    expect(@postcodesio.get_single_quality('b296au')).to be_kind_of(Integer)
    expect(@postcodesio.get_single_quality('cr81ez')).to be_between(1,9).inclusive
  end

  it 'should return integer at eastings and be blank for channel islands and isle of man' do
    if @postcodesio.get_single_postcode(a).include?("GY") || @postcodesio.get_single_postcode(a).include?("IM")
      expect(@postcodesio.get_single_eastings(a)).to be_nil
    else
      expect(@postcodesio.get_single_eastings(a)).to be_kind_of(Integer)
    end
  end

it 'should return integer at northings and be blank for channel islands and isle of man' do
  if @postcodesio.get_single_postcode(a).include?("IM") || @postcodesio.get_single_postcode(a).include?("GY")
    expect(@postcodesio.get_single_northings(a)).to be_nil
  else
    expect(@postcodesio.get_single_northings(a)).to be_kind_of(Integer)
  end

end

it 'should return a string for country' do
  expect(@postcodesio.get_single_country(a)).to be_kind_of(String)
end

it 'should return a string or null for nhs_hs' do
    expect(@postcodesio.get_single_nhshs(a)).to be_kind_of(String)
end

it 'should return a float for longitude' do
  expect(@postcodesio.get_single_longitude(a)).to be_kind_of(Float)
end

it 'should return a float for latitude' do
  expect(@postcodesio.get_single_latitude(a)).to be_kind_of(Float)
end

it 'should return string or null for european_electoral_region' do
  expect(@postcodesio.get_single_constituency(a)).to be_kind_of(String)
end

it 'should return string for primary care trust' do
  expect(@postcodesio.get_single_primary(a)).to be_kind_of(String)
end

it 'should return string for regions' do
  expect(@postcodesio.get_single_region(a)).to be_kind_of(String)
end

it 'should return string for lsoa' do
  expect(@postcodesio.get_single_lsoa(a)).to be_kind_of(String)
end

it 'should return string for msoa' do
  expect(@postcodesio.get_single_msoa(a)).to be_kind_of(String)
end

it 'should return string for incode' do
  expect(@postcodesio.get_single_incode(a)).to be_kind_of(String)
end

it 'should return string for outcode' do
  expect(@postcodesio.get_single_outcode(a)).to be_kind_of(String)
end

it 'should return string for parliamentary constituencyc' do
  expect(@postcodesio.get_single_pc(a)).to be_kind_of(String)
end

it 'should return string for admin district' do
  expect(@postcodesio.get_single_ad(a)).to be_kind_of(String)
end

it 'should return string for parish' do
  expect(@postcodesio.get_single_parish(a)).to be_kind_of(String)
end

it 'should return string or null for admin county' do
  if @postcodesio.get_single_ac(a) == nil
    expect(@postcodesio.get_single_ac(a)).to be_nil
  else
    expect(@postcodesio.get_single_ac(a)).to be_kind_of(String)
  end
end

it 'should return string or null for admin ward' do
  if @postcodesio.get_single_aw(a) == nil
    expect(@postcodesio.get_single_aw(a)).to be_nil
  else
    expect(@postcodesio.get_single_aw(a)).to be_kind_of(String)
  end
end

it 'should return string or null for ccg' do
  if @postcodesio.get_single_ccg(a) == nil
    expect(@postcodesio.get_single_ccg(a)).to be_nil
  else
    expect(@postcodesio.get_single_ccg(a)).to be_kind_of(String)
  end
end

it 'should return string or null for nuts' do
  if @postcodesio.get_single_nuts(a) == nil
    expect(@postcodesio.get_single_nuts(a)).to be_nil
  else
    expect(@postcodesio.get_single_nuts(a)).to be_kind_of(String)
  end
end

it 'should return string for code admin district' do
  expect(@postcodesio.get_single_code_ad(a)).to be_kind_of(String)
end

it 'should return string for code admin county' do
  expect(@postcodesio.get_single_code_ac(a)).to be_kind_of(String)
end

it 'should return string for code admin ward' do
  expect(@postcodesio.get_single_code_aw(a)).to be_kind_of(String)
end

it 'should return string for code parish' do
  expect(@postcodesio.get_single_code_parish(a)).to be_kind_of(String)
end

it 'should return string for code pc' do
  expect(@postcodesio.get_single_code_pc(a)).to be_kind_of(String)
end

it 'should return string or null for code ccg' do
  if @postcodesio.get_single_code_ccg(a) == nil
    expect(@postcodesio.get_single_code_ccg(a)).to be_nil
  else
    expect(@postcodesio.get_single_code_ccg(a)).to be_kind_of(String)
  end
end

it 'should return string or null for code nuts' do
  if @postcodesio.get_single_code_nuts(a) == nil
    expect(@postcodesio.get_single_code_nuts(a)).to be_nil
  else
    expect(@postcodesio.get_single_code_nuts(a)).to be_kind_of(String)
  end
end

  end
end
