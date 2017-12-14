require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end
#Self like this. so this.class.get
  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post("/postcodes", body:{"postcodes" => postcodes_array}).body)
  end

  def get_postcode(postcode)
    get_single_postcode(postcode)["result"]["postcode"]
  end

  def get_single_quality(postcode)
    get_single_postcode(postcode)["result"]["quality"]
  end

  def get_single_eastings(postcode)
    get_single_postcode(postcode)["result"]["eastings"]
  end

  def get_single_northings(postcode)
    get_single_postcode(postcode)["result"]["northings"]
  end

  def get_single_country(postcode)
    get_single_postcode(postcode)["result"]["country"]
  end

  def get_single_nhshs(postcode)
    get_single_postcode(postcode)["result"]["nhs_ha"]
  end

  def get_single_district(postcode)
    get_single_postcode(postcode)["result"]["nhs_hs"]
  end

  def get_single_longitude(postcode)
    get_single_postcode(postcode)["result"]["longitude"]
  end

  def get_single_latitude(postcode)
    get_single_postcode(postcode)["result"]["latitude"]
  end

  def get_single_constituency(postcode)
    get_single_postcode(postcode)["result"]["european_electoral_region"]
  end

  def get_single_primary(postcode)
    get_single_postcode(postcode)["result"]["primary_care_trust"]
  end

  def get_single_region(postcode)
    get_single_postcode(postcode)["result"]["region"]
  end

  def get_single_lsoa(postcode)
    get_single_postcode(postcode)["result"]["lsoa"]
  end

  def get_single_msoa(postcode)
    get_single_postcode(postcode)["result"]["msoa"]
  end

  def get_single_incode(postcode)
    get_single_postcode(postcode)["result"]["incode"]
  end

  def get_single_outcode(postcode)
    get_single_postcode(postcode)["result"]["outcode"]
  end

  def get_single_pc(postcode)
    get_single_postcode(postcode)["result"]["parliamentary_constituency"]
  end

  def get_single_ad(postcode)
    get_single_postcode(postcode)["result"]["admin_district"]
  end

  def get_single_parish(postcode)
    get_single_postcode(postcode)["result"]["parish"]
  end

  def get_single_ac(postcode)
    get_single_postcode(postcode)["result"]["admin_county"]
  end

  def get_single_aw(postcode)
    get_single_postcode(postcode)["result"]["admin_ward"]
  end

  def get_single_ccg(postcode)
    get_single_postcode(postcode)["result"]["ccg"]
  end

  def get_single_nuts(postcode)
    get_single_postcode(postcode)["result"]["nuts"]
  end

  def get_single_code_ad(postcode)
    get_single_postcode(postcode)["result"]["codes"]["admin_district"]
  end

  def get_single_code_ac(postcode)
    get_single_postcode(postcode)["result"]["codes"]["admin_county"]
  end

  def get_single_code_aw(postcode)
    get_single_postcode(postcode)["result"]["codes"]["admin_ward"]
  end

  def get_single_code_parish(postcode)
    get_single_postcode(postcode)["result"]["codes"]["parish"]
  end

  def get_single_code_pc(postcode)
    get_single_postcode(postcode)["result"]["codes"]["parliamentary_constituency"]
  end

  def get_single_code_ccg(postcode)
    get_single_postcode(postcode)["result"]["codes"]["ccg"]
  end

  def get_single_code_nuts(postcode)
    get_single_postcode(postcode)["result"]["codes"]["nuts"]
  end

  #***************** MULTIPLE TESTS **********************
  def get_m_postcode(postcodes_array)
    get_multiple_postcodes(postcodes_array)["result"]["postcode"]
  end

  def get_m_quality(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["quality"]
  end

  def get_m_eastings(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["eastings"]
  end

  def get_m_northings(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["northings"]
  end

  def get_m_country(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["country"]
  end

  def get_m_nhshs(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["nhs_ha"]
  end

  def get_m_district(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["nhs_hs"]
  end

  def get_m_longitude(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["longitude"]
  end

  def get_m_latitude(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["latitude"]
  end

  def get_m_constituency(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["european_electoral_region"]
  end

  def get_m_primary(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["primary_care_trust"]
  end

  def get_m_region(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["region"]
  end

  def get_m_lsoa(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["lsoa"]
  end

  def get_m_msoa(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["msoa"]
  end

  def get_m_incode(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["incode"]
  end

  def get_m_outcode(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["outcode"]
  end

  def get_m_pc(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["parliamentary_constituency"]
  end

  def get_m_ad(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["admin_district"]
  end

  def get_m_parish(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["parish"]
  end

  def get_m_ac(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["admin_county"]
  end

  def get_m_aw(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["admin_ward"]
  end

  def get_m_ccg(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["ccg"]
  end

  def get_m_nuts(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["nuts"]
  end

  def get_m_code_ad(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["admin_district"]
  end

  def get_m_code_ac(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["admin_county"]
  end

  def get_m_code_aw(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["admin_ward"]
  end

  def get_m_code_parish(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["parish"]
  end

  def get_m_code_pc(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["parliamentary_constituency"]
  end

  def get_m_code_ccg(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["ccg"]
  end

  def get_m_code_nuts(postcode)
    get_multiple_postcodes(postcodes_array)["result"]["codes"]["nuts"]
  end

end
x = Postcodesio.new
# print x.get_single_postcode('cr81ez')
puts x.get_m_postcode(["cr81ez", "b296au"])
