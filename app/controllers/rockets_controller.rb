class RocketsController < ApplicationController

  def show
    @rocket = Rocket.find(params[:id])
    # @rocket = Rocket.new()
  end

  def myposts
    @rockets = Rocket.where(user: current_user)
  end

  def new
    @rocket = Rocket.new
  end

  def create
    @rocket = Rocket.new(rocket_params)
    @rocket.user = current_user
    if @rocket.save
      redirect_to myposts_path(@rocket)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @rockets = Rocket.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def rocket_params
    params.require(:rocket).permit(:name, :photo, :capacity, :country, :town, :price)
  end

end
