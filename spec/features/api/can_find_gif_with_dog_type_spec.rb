require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Can find a gif with a given dog type" do
    VCR.use_cassette('Random Dog Gif with Name Given') do

      doggo = DoggoService.random_with_type('german shepard')

      expect(doggo.type).to eq('gif')
      expect(doggo.emb_url).to eq("https://giphy.com/embed/7SY7sKs33Qgtl9cDxg")
      expect(doggo.title).to eq("Angry Claudia Roth GIF by Social-Media-Redaktion Bundestag")
      expect(doggo.images.length).to eq 24
    end
  end
end