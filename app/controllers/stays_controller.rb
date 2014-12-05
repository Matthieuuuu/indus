class StaysController < ApplicationController
  def index
    @stay = Stay.new
  end

  def update
    stay = Stay.find(params[:id])
    stay.update(stay_params) unless stay.status == "cancelled"
    fill_taken_days(stay) if stay.status == "accepted"
    redirect_to stays_path
  end

  def create
    stay = Stay.create(user: current_user)
    stay.update({site_id: params[:stay][:site_id], end_date: params[:end_date], begin_date: params[:begin_date]})
    redirect_to stays_path
  end

  private

  def stay_params
    params.require(:stay).permit(:site_id, :status, :response_at, :begin_date, :end_date)
  end

  def fill_taken_days(stay)
    (stay.begin_date..stay.end_date).to_a.each do |day|
      TakenFlatDay.create(occupied_date: day, site: stay.site)
    end
  end
end