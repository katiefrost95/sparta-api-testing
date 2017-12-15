require 'spec_helper'

describe 'test postcodesio' do

  before(:each) do
     @file = Postcodesio.new
  end

  a = "cr81ez"
  b = ["cr81ez" "b296au"]

  it 'single postcode should be a Hash' do
    expect(@file.get_single_postcode('cr81ez')).to be_kind_of(Hash)
    expect(@file.get_multiple_postcodes(["cr81ez", "b296au"])).to be_kind_of(Hash)
  end

  it 'should respond status 200' do
    expect(@file.get_single_postcode('cr81ez')["status"]).to eq 200
    expect(@file.get_multiple_postcodes(["cr81ez", "b296au"])["status"]).to eq 200
  end

  it 'should respond with keys as strings' do
    @file.get_single_postcode('cr81ez').each do |k,v|
      expect(k).to be_kind_of(String)
    end
  end

  it 'should respond with the postcode as a string and 7-8 characters long' do
    expect(@file.get_postcode('cr81ez')).to be_kind_of(String)
    expect(@file.get_postcode('cr81ez').length).to be_between(7,8).inclusive
  end

  it 'should respond with quality as an integer between 1 and 9' do
    expect(@file.get_single_quality('b296au')).to be_kind_of(Integer)
    expect(@file.get_single_quality('cr81ez')).to be_between(1,9).inclusive
  end

  it 'should return integer at eastings and be blank for channel islands and isle of man' do
    if @file.get_single_postcode(a).include?("GY") || @file.get_single_postcode(a).include?("IM")
      expect(@file.get_single_eastings(a)).to be_nil
    else
      expect(@file.get_single_eastings(a)).to be_kind_of(Integer)
    end
  end

it 'should return integer at northings and be blank for channel islands and isle of man' do
  if @file.get_single_postcode(a).include?("IM") || @file.get_single_postcode(a).include?("GY")
    expect(@file.get_single_northings(a)).to be_nil
  else
    expect(@file.get_single_northings(a)).to be_kind_of(Integer)
  end

end

it 'should return a string for country' do
  expect(@file.get_single_country(a)).to be_kind_of(String)
end

it 'should return a string or null for nhs_hs' do
    expect(@file.get_single_nhshs(a)).to be_kind_of(String)
end

it 'should return a float for longitude' do
  expect(@file.get_single_longitude(a)).to be_kind_of(Float)
end

it 'should return a float for latitude' do
  expect(@file.get_single_latitude(a)).to be_kind_of(Float)
end

it 'should return string or null for european_electoral_region' do
  expect(@file.get_single_constituency(a)).to be_kind_of(String)
end

it 'should return string for primary care trust' do
  expect(@file.get_single_primary(a)).to be_kind_of(String)
end

it 'should return string for regions' do
  expect(@file.get_single_region(a)).to be_kind_of(String)
end

it 'should return string for lsoa' do
  expect(@file.get_single_lsoa(a)).to be_kind_of(String)
end

it 'should return string for msoa' do
  expect(@file.get_single_msoa(a)).to be_kind_of(String)
end

it 'should return string for incode' do
  expect(@file.get_single_incode(a)).to be_kind_of(String)
end

it 'should return string for outcode' do
  expect(@file.get_single_outcode(a)).to be_kind_of(String)
end

it 'should return string for parliamentary constituencyc' do
  expect(@file.get_single_pc(a)).to be_kind_of(String)
end

it 'should return string for admin district' do
  expect(@file.get_single_ad(a)).to be_kind_of(String)
end

it 'should return string for parish' do
  expect(@file.get_single_parish(a)).to be_kind_of(String)
end

it 'should return string or null for admin county' do
  if @file.get_single_ac(a) == nil
    expect(@file.get_single_ac(a)).to be_nil
  else
    expect(@file.get_single_ac(a)).to be_kind_of(String)
  end
end

it 'should return string or null for admin ward' do
  if @file.get_single_aw(a) == nil
    expect(@file.get_single_aw(a)).to be_nil
  else
    expect(@file.get_single_aw(a)).to be_kind_of(String)
  end
end

it 'should return string or null for ccg' do
  if @file.get_single_ccg(a) == nil
    expect(@file.get_single_ccg(a)).to be_nil
  else
    expect(@file.get_single_ccg(a)).to be_kind_of(String)
  end
end

it 'should return string or null for nuts' do
  if @file.get_single_nuts(a) == nil
    expect(@file.get_single_nuts(a)).to be_nil
  else
    expect(@file.get_single_nuts(a)).to be_kind_of(String)
  end
end

it 'should return string for code admin district' do
  expect(@file.get_single_code_ad(a)).to be_kind_of(String)
end

it 'should return string for code admin county' do
  expect(@file.get_single_code_ac(a)).to be_kind_of(String)
end

it 'should return string for code admin ward' do
  expect(@file.get_single_code_aw(a)).to be_kind_of(String)
end

it 'should return string for code parish' do
  expect(@file.get_single_code_parish(a)).to be_kind_of(String)
end

it 'should return string for code pc' do
  expect(@file.get_single_code_pc(a)).to be_kind_of(String)
end

it 'should return string or null for code ccg' do
  if @file.get_single_code_ccg(a) == nil
    expect(@file.get_single_code_ccg(a)).to be_nil
  else
    expect(@file.get_single_code_ccg(a)).to be_kind_of(String)
  end
end

it 'should return string or null for code nuts' do
  if @file.get_single_code_nuts(a) == nil
    expect(@file.get_single_code_nuts(a)).to be_nil
  else
    expect(@file.get_single_code_nuts(a)).to be_kind_of(String)
  end
end
#**************** MULTIPLE TESTS ******************
# it 'should respond with the postcode as a string and 7-8 characters long' do
#   expect(@file.get_postcode('cr81ez')).to be_kind_of(String)
#   expect(@file.get_postcode('cr81ez').length).to be_between(7,8).inclusive
# end

end
