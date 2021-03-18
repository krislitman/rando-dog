require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Api can be consumed" do
    VCR.use_cassette('Consume Random Dog API') do

    json_response = File.read('spec/fixtures/random_dog_giphy.json')
    stub_request(:get, 
    "api.giphy.com/v1/gifs/random?api_key=#{Figaro.env.api_key}&tag=dog&rating=g").
      to_return(status: 200, body: json_response)

      body = JSON.parse(json_response)

      doggo = DoggoService.random(body)

      expect(doggo.type).to eq('gif')
    end
  end
end