class VillasController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @villas = Villa.all
  end

  def show
    @villa = Villa.find(params[:id])
  end

  def new
    @villa = Villa.new
  end

  def create
    @villa = Villa.new(villa_params)
    @villa.user = current_user
    if @villa.save
      redirect_to root_path
      # redirect_to villa_path(@villa)
      # we should change the redirect but since the page doesn't exist yet I redirect to home
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @villa = Villa.find(params[:id])
  end

  def update
    @villa = Villa.find(params[:id])
    @villa.update(villa_params)
    if @villa.save
      redirect_to root_path
      # redirect_to villa_path(@villa)
      # we should change the redirect but since the page doesn't exist yet I redirect to home
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @villa = Villa.find(params[:id])
    @villa.destroy
    redirect_to root_path, status: :see_other
    # we should change the redirect to one owners' villa but since the page doesn't exist yet I redirect to home
  end

  def my_villas
    @villas = Villa.where(user: current_user)
  end

  private

  def villa_params
    params.require(:villa).permit(:name, :address, :movie_genre, :description, :price_per_night, :guests_number)
  end
end
