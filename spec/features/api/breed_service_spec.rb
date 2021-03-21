require "rails_helper"

RSpec.describe "Dog API" do
  scenario "Can list all breeds" do
    VCR.use_cassette('Breed Service') do

      dogs = BreedService.all_breeds

      expect(dogs.length).to eq 95
      expect(dogs.first).to eq("affenpinscher")
    end
  end
end