require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Api can be consumed" do
    VCR.use_cassette('Consume Random Dog API') do

      doggo = DoggoService.random

      expect(doggo.type).to eq('gif')
      expect(doggo.emb_url).to eq("https://giphy.com/embed/4VY8s5wDEx7SPowvZ3")
      expect(doggo.title).to eq("Animated GIF")
      expect(doggo.images.length).to eq 23
    end
  end
end