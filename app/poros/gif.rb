class Gif
  attr_reader :type,
              :url,
              :title,
              :images
  
  def initialize(input)
    @type = input["data"]["type"]
    @url = input["data"]["url"]
    @title = input["data"]["title"]
    @images = input["data"]["images"]
  end
end