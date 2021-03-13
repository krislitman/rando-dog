require "rails_helper"

RSpec.describe "Giphy API" do
  scenario "Api can be consumed" do
    json_response = File.read('spec/fixtures/random_dog_giphy.json')
    stub_request(:get, 
    "api.giphy.com/v1/gifs/random?api_key=QohTU31I9NDv6lAAsU5wWOjreciGjMwQ&tag=dog&rating=g").
      to_return(status: 200, body: json_response)

    visit '/'
  end
end