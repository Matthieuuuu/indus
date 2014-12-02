class StaysController < ApplicationController
  def index
    @stay = Stay.new
  end

  def create
    stay = Stay.create(user: current_user)
    stay.update(stay_params)
    redirect_to stays_path
  end

  def update
    stay = Stay.find(stay_params[:stay_id])
    stay.update(status: stay_params[:status])
    redirect_to stays_path
  end

  private

  def stay_params
    params.require(:stay).permit(:site_id, :begin_date, :end_date, :status, :stay_id)
  end


end