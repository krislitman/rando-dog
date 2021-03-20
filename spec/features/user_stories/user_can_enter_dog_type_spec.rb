require "rails_helper"

RSpec.describe "As a user on the home page" do
  scenario "I can enter a type of dog to search for" do
    visit "/"

    expect(page).to have_field(:breed)

    expect(page).to have_button("Get a Dog Gif")
  end
end