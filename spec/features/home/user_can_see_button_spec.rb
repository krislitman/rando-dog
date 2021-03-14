require "rails_helper"

RSpec.describe "As a visitor" do
  describe "When I visit the home page" do
    it "I see a button" do
      visit "/"

      expect(page).to have_button("Get a Dog Gif")
    end
  end
end