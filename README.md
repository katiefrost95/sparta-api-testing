# sparta-api-testing

## Brief
This repository is an introduction to integration testing and writing tests for API's and using HTTParty to access the api data. This repo also includes writing tests for data in the Json format which is written in a format that matches certain API data that is ultimately being tested.

I used the service object model to test postcode API's for both single and multiple postcodes. In the folder postcodesio the multiple and single tests were written out in the same file which made it very long and extensive. Consequently in a new folder postcodesiotake2 the same tests were written in a much simpler/ more readable format with the single and multiple postcode tests being split into classes with one postcode superclass.

### How to run the tests
First clone this repository into your terminal with this link:

`git clone git@github.com:katiefrost95/sparta-api-testing.git`

In order to run these tests you need to install the rspec, HTTParty gem and make sure the json gem is being required.

`gem install rspec`

`rspec --init`

`gem install httparty`   

`require httparty`

`require json`

Here is the following documentation for the two gems:

HTTParty:
http://www.rubydoc.info/github/jnunemaker/httparty

Json:
http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html

### Adding New tests

##### Json_parsing_tests:
* To access the tests for the json data head into the httparty_intro/fixer/json_parsing_test.
* To add new tests head into the json_class_parse_spec.rb file to and write out tests in the following format:

      it "should contain the base as EUR" do
        expect(@file["base"]).to eq "EUR"
      end

* To add any new methods for your tests then those are in the json_class_parse.rb file and write out new methods to access the json data as follows:

      def get_base_value
        @json_file['base']
      end

##### Postcodesiotake2 tests:

Here is the following documentation for the postcodesio test and a list of everything that had to be tested:

https://postcodes.io/docs

* The tests for the postcode api are split into classes in order to improve readability.
* To add more tests you head into either the single or multiple spec file and add the tests in the following format:

      it 'should respond with the postcode as a string and 7-8 characters long' do
        expect(@postcodesio.get_postcode('cr81ez')).to be_kind_of(String)
        expect(@postcodesio.get_postcode('cr81ez').length).to be_between(7,8).inclusive
      end

* To add new methods to test this can be done in the single_postcode_service.rb or the multiple_postcode_Service.rb depending on what you are testing. Methods should be written as follows:

      def get_postcode(postcode)
        @single_postcode_data["result"]["postcode"]
      end
