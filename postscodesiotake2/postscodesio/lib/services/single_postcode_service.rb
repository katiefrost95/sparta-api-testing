require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  attr_accessor :single_postcode_data

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_result
    @single_postcode_data['result']
  end

  def get_status_code_from_body_response
    @single_postcode_data['status']
  end

  def get_postcode(postcode)
    @single_postcode_data["result"]["postcode"]
  end

  def get_single_quality(postcode)
    @single_postcode_data["result"]["quality"]
  end

  def get_single_eastings(postcode)
    @single_postcode_data["result"]["eastings"]
  end

  def get_single_northings(postcode)
    @single_postcode_data["result"]["northings"]
  end

  def get_single_country(postcode)
    @single_postcode_data["result"]["country"]
  end

  def get_single_nhshs(postcode)
    @single_postcode_data["result"]["nhs_ha"]
  end

  def get_single_district(postcode)
    @single_postcode_data["result"]["nhs_hs"]
  end

  def get_single_longitude(postcode)
    @single_postcode_data["result"]["longitude"]
  end

  def get_single_latitude(postcode)
    @single_postcode_data["result"]["latitude"]
  end

  def get_single_constituency(postcode)
    @single_postcode_data["result"]["european_electoral_region"]
  end

  def get_single_primary(postcode)
    @single_postcode_data["result"]["primary_care_trust"]
  end

  def get_single_region(postcode)
    @single_postcode_data["result"]["region"]
  end

  def get_single_lsoa(postcode)
    @single_postcode_data["result"]["lsoa"]
  end

  def get_single_msoa(postcode)
    @single_postcode_data["result"]["msoa"]
  end

  def get_single_incode(postcode)
    @single_postcode_data["result"]["incode"]
  end

  def get_single_outcode(postcode)
    @single_postcode_data["result"]["outcode"]
  end

  def get_single_pc(postcode)
    @single_postcode_data["result"]["parliamentary_constituency"]
  end

  def get_single_ad(postcode)
    @single_postcode_data["result"]["admin_district"]
  end

  def get_single_parish(postcode)
    @single_postcode_data["result"]["parish"]
  end

  def get_single_ac(postcode)
    @single_postcode_data["result"]["admin_county"]
  end

  def get_single_aw(postcode)
    @single_postcode_data["result"]["admin_ward"]
  end

  def get_single_ccg(postcode)
    @single_postcode_data["result"]["ccg"]
  end

  def get_single_nuts(postcode)
    @single_postcode_data["result"]["nuts"]
  end

  #********** Codes ***********************

  def get_result_code
    @single_postcode_data["result"]["codes"]
  end

  def get_single_code_ad(postcode)
    get_result_code["admin_district"]
  end

  def get_single_code_ac(postcode)
    get_result_code["admin_county"]
  end

  def get_single_code_aw(postcode)
    get_result_code["admin_ward"]
  end

  def get_single_code_parish(postcode)
    get_result_code["parish"]
  end

  def get_single_code_pc(postcode)
    get_result_code["parliamentary_constituency"]
  end

  def get_single_code_ccg(postcode)
    get_result_code["ccg"]
  end

  def get_single_code_nuts(postcode)
    get_result_code["nuts"]
  end



end

# call = SinglePostcodeService.new
# puts call.get_single_postcode('cr81ez')
