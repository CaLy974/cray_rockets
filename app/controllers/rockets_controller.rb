class RocketsController < ApplicationController

  def show
    @rocket = Rocket.find(params[:id])
    # @rocket = Rocket.new()
  end

  def index
    @rockets = Rocket.all
  end
end
