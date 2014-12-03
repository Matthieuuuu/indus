class StaysController < ApplicationController
  def index
    @stay = Stay.new
  end

  def update
    stay = Stay.find(params[:id])
    stay.update(stay_params) unless stay.status == "cancelled"
    redirect_to stays_path
  end

  def create
    stay = Stay.create(user: current_user)
    end_date = process_date(params[:end_date])
    begin_date = process_date(params[:begin_date])
    stay.update({site_id: params[:stay][:site_id], end_date: end_date, begin_date: begin_date})
    raise unless (stay.begin_date || stay.end_date)
    redirect_to stays_path
  end

  private

  def stay_params
    params.require(:stay).permit(:site_id, :status, :response_at, :begin_date, :end_date)
  end

  def process_date(date)
    date_array = date.split("/")
    day = date_array[1]
    month = date_array[0]
    year = date_array[2]
    day + "/" + month + "/" + year
  end

end