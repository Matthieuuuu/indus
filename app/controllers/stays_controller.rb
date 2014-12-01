class StaysController < ApplicationController
  before_action :authenticate_user!

  def create
    Stay.create(user: current_user, site: Site.find(params[:id]), begin_date: params[:begin_date], end_date: params[:end_date]) # see params!
    redirect_to dashboard_path
  end

  def cancel_booking
    stay = Stay.find(params[:id]) # check params value
    stay.status = "Cancelled"
    redirect_to dashboard_path
  end

  def accept_booking
    stay = Stay.find(params[:id]) # check params value
    stay.status = "Accepted"
    redirect_to dashboard_path
  end

  def decline_booking
    stay = Stay.find(params[:id]) # check params value
    stay.status = "Declined"
    redirect_to dashboard_path
  end

end