class BreedService

  def self.all_breeds
    dogs = HTTParty.get("https://dog.ceo/api/breeds/list/all")
    dogs['message'].keys.map(&:titleize)
  end
end