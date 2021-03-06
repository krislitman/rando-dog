module Call

  def consume(url, tag = nil)
    response = Faraday.get(
      "https://api.giphy.com/v1/gifs/#{url}",
      api_key: Figaro.env.api_key,
      tag: "#{tag}",
      rating: "g"
    )
    JSON.parse(response.body)
  end
end