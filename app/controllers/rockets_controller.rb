class RocketsController < ApplicationController
  def show
    @rocket = Rocket.find (params [:id])
  end
end
