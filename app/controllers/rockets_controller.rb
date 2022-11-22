class RocketsController < ApplicationController

  def index
    @rockets = Rocket.all
  end
end
