class RentsController < ApplicationController

  def index
    @rents = Rent.all
  end

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.user = current_user
    if @rent.save
      redirect_to rent_path(@rent)
    else
      render :new
    end
  end

  def edit
    @rent = Rent.find(params[:id])
  end

  def update
    @rent = Rent.find(params[:id])
    @rent.update(rent_params)
    redirect_to rent_path(@rent)
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to rents_path
  end

  private

  def rent_params
    params.require(:rent).permit(:name, :description, :price, :city, :photo)
  end
end
