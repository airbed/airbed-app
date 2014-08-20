class ImagesController < ApplicationController

  def new
    @apartment = Apartment.find(params[:apartment_id])
    @image = Image.new
  end

  def create
    @apartment = Apartment.find(params[:apartment_id])
    @image = @apartment.images.create(image_params)
    redirect_to new_apartment_image_path
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to apartments_path
  end

  private
  def image_params
    params.require(:image).permit(:apartment_id, :picture)
  end

end
