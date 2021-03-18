class Gif
  attr_reader :type
  
  def initialize(input)
    @type = input["data"]["type"]
  end
end