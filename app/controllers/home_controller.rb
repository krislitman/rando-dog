class HomeController < ApplicationController
  def index
    @dog_list = BreedService.all_breeds
  end
end