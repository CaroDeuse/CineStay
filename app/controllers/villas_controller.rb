class VillasController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @villas = Villa.all
  end

  def show
    @villa = Villa.find(params[:id])
    @booking = Booking.new
  end

  def new
    @villa = Villa.new
  end

  def create
    @villa = Villa.new(villa_params)
    @villa.user = current_user
    if @villa.save
      redirect_to my_villas_villas_path, notice: "Congratulations, visitors can now rent your villa!"
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
      redirect_to villa_path(@villa)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @villa = Villa.find(params[:id])
    @villa.destroy
    redirect_to my_villas_villas_path, status: :see_other, notice: "Your villa was deleted and all related bookings were cancelled."
  end

  def my_villas
    @villas = Villa.where(user: current_user)
  end

  private

  def villa_params
    params.require(:villa).permit(:name, :address, :movie_genre, :description, :price_per_night, :guests_number, :photo)
  end
end
