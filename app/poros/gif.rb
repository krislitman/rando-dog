class Gif
  attr_reader :type,
              :emb_url,
              :title,
              :images
  
  def initialize(input)
    @type = input["data"]["type"]
    @emb_url = input["data"]["embed_url"]
    @title = input["data"]["title"]
    @images = input["data"]["images"]
  end
end