require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Api can be consumed" do
    VCR.use_cassette('Consume Random Dog API') do

      doggo = DoggoService.random(body)

      expect(doggo.type).to eq('gif')
    end
  end
end