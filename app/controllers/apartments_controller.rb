class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
    @image = @apartment.images.first.picture.url
  end

  def new
    if user_signed_in?
      @apartment = Apartment.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    :authenticate_user!
    user = current_user
    @apartment = user.apartments.create(apartment_params)
    redirect_to new_apartment_image_path(@apartment)
    UserMailer.newapt_email(user).deliver
  end

  def edit
    @apartment = Apartment.find(params[:id])
    if current_user.id != @apartment.user_id
      redirect_to apartment_path(@apartment)
    end
  end

  def update
    @apartment = Apartment.find(params[:id])
    if current_user.id == @apartment.user_id
      @apartment.update(apartment_params)
      redirect_to apartment_path(@apartment)
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    if current_user.id != @apartment.user_id
      redirect_to apartment_path(@apartment)
    end
    @apartment.destroy
    redirect_to apartments_path
  end

  private
  def apartment_params
    params.require(:apartment).permit(:title, :description, :city, :people)
  end
end
