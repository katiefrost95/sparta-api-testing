require 'httparty'
require 'json'

class MultiPostcodesService
  include HTTParty

  attr_accessor :multiple_postcode_data

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes", body:{"postcodes" => postcodes_array}).body)
  end

  def get_m_result
    @multiple_postcode_data["result"].each do |x|
      return ["result"]["x"]
    end
  end

  def get_status_code
    @multiple_postcode_data['status']
  end

  def get_m_postcode(postcodes_array)
    @multiple_postcode_data["result"]["postcode"]
  end

end

call = MultiPostcodesService.new
puts call.get_m_result
