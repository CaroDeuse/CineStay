class VillasController < ApplicationController
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
    if @villa.save
      redirect_to villa_path(@villa)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def villa_params
    params.require(:villa).permit(:name, :address, :movie_genre, :description, :price_per_night, :guests_number)
  end
end
