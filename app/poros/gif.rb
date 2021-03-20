class Gif
  attr_reader :type,
              :url,
              :title,
              :images,
              :image_url
  
  def initialize(input)
    @type = input["data"]["type"]
    @url = input["data"]["url"]
    @title = input["data"]["title"]
    @images = input["data"]["images"]
    @image_url = input["data"]["image_url"]
  end
end