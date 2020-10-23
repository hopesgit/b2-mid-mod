class RideMechanicsController < ApplicationController
  def create
    RideMechanic.create!(ride_id: params[:search], mechanic_id: params[:mechanic_id])
    redirect_to "/mechanics/#{params[:mechanic_id]}"
  end
end
