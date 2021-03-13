require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Api can be consumed" do
    stub_request(:get, 
    "api.giphy.com/v1/gifs/random?api_key=QohTU31I9NDv6lAAsU5wWOjreciGjMwQ&tag=dog&rating=g").
      to_return(status: 200, body: "")

    visit '/'
  end
end