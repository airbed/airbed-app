class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    @image = @apartment.images.first.picture.url
  end

  def show
    @apartment = Apartment.find(params[:id])
    @image = @apartment.images.first.picture.url
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.create(apartment_params)
    redirect_to new_apartment_image_path(@apartment)
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    @apartment.update(apartment_params)
    redirect_to apartment_path(@apartment)
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to apartments_path
  end

  private
  def apartment_params
    params.require(:apartment).permit(:title, :description, :city, :people)
  end
end
