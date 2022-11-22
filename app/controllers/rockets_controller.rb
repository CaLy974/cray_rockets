class RocketsController < ApplicationController

  def show
    @rocket = Rocket.find (params [:id])
  end

  def index
    @rockets = Rocket.all
  end
end
