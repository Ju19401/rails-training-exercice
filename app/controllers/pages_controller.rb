class PagesController < ApplicationController
  #skip_before_action :authenticate_user!

  def home
  end

  def search
    @rents = Rent.where('city ILIKE ?', "%#{params[:query]}%")
  end
end
