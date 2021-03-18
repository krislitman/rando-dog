class DoggoService 
  def self.random(json_response)
    expected = consume('/random', 'bordercollie')
    require 'pry'; binding.pry
  end

  private

  def self.consume(url, tag = nil)
    response = Faraday.get(
      "api.giphy.com/v1/gifs/",
      api_key: Figaro.env.api_key,
      tag: "#{tag}",
      rating: "g"
    )
    JSON.parse(response.body)
  end
end