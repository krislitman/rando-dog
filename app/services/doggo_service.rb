class DoggoService 

  def self.random_with_type(dog_type)
    expected = consume('random', dog_type)
    Gif.new(expected)
  end
  

  def self.random
    expected = consume('random')
    Gif.new(expected)
  end

  private

  def self.consume(url, tag = nil)
    response = Faraday.get(
      "https://api.giphy.com/v1/gifs/#{url}",
      api_key: Figaro.env.api_key,
      tag: "#{tag}",
      rating: "g"
    )
    JSON.parse(response.body)
  end
end