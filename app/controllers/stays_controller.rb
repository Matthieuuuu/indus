class StaysController < ApplicationController
  def index
  end

  def create
    Stay.create(user: current_user, site: Site.find(params[:id]), begin_date: params[:begin_date], end_date: params[:end_date]) # see params!
    redirect_to stays_path
  end

  def update
    redirect_to stays_path
  end



  # def cancel_booking
  #   stay = Stay.find(params[:id]) # check params value
  #   stay.status = "Cancelled"
  #   redirect_to staysS_path
  # end

  # def accept_booking
  #   stay = Stay.find(params[:id]) # check params value
  #   stay.status = "Accepted"
  #   redirect_to staysS_path
  # end

  # def decline_booking
  #   stay = Stay.find(params[:id]) # check params value
  #   stay.status = "Declined"
  #   redirect_to staysS_path
  # end

end