require 'httparty'

#storing the response of api in variable
response = HTTParty.get('http://bbc.co.uk/news')

puts response.headers.inspect
