class RocketsController < ApplicationController

  def show
    @rocket = Rocket.find(params[:id])
    @book = Book.new()
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
    @rocket = Rocket.find(params[:id])
  end

  def update
    @rocket.user = current_user
    if @rocket.update(rocket_params)
      redirect_to myposts_path(@rocket)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rocket = Rocket.find(params[:id])
    @rocket.destroy
    redirect_to myposts_path, status: :see_other
  end

  private

  def rocket_params
    params.require(:rocket).permit(:name, :photo, :capacity, :country, :town, :price)
  end
end
