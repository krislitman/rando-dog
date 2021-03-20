require "rails_helper"

RSpec.describe "As a user on the home page" do

  scenario "I can enter a type of dog to search for" do
    visit "/"

    expect(page).to have_field(:breed)
    expect(page).to have_button("Get a Dog Gif")
  end

  scenario "After entering a breed and clicking, it takes me to a page where I see the gif" do
    VCR.use_cassette('User story gif 1') do

    visit "/"

    fill_in :breed, with: "border collie"
    click_button "Get a Dog Gif"

    expect(page).to have_content('Here is your random Border Collie Gif!')
    expect(page).to have_link "Find another Gif"
    end
  end
end