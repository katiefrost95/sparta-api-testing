require 'httparty'
require 'json'

class MultiPostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

#Self like this. so this.class.get
  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post("/postcodes", body:{"postcodes" => postcodes_array}).body)
  end

end

call = MultiPostcodesService.new
# puts call.get_multiple_postcodes(['cr81ez', 'b296au'])
