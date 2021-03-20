require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Can find a gif with a given dog type" do
    VCR.use_cassette('Random Dog Gif with Type Given') do

      doggo = DoggoService.random_with_type('german shepard')

      expect(doggo.type).to eq('gif')
      expect(doggo.url).to eq( "https://giphy.com/gifs/s04-Sw0j6Hx5V061fbocWt")
      expect(doggo.title).to eq("Sad German Soccer GIF by FC Schalke 04")
      expect(doggo.images.length).to eq 24
    end
  end
end