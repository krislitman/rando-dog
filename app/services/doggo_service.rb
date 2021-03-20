class DoggoService 
  extend Call

  def self.random_with_type(dog_type)
    expected = consume('random', dog_type)
    Gif.new(expected)
  end
  

  def self.random
    expected = consume('random')
    Gif.new(expected)
  end
end