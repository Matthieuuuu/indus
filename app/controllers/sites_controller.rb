class SitesController < ApplicationController

  # resources :sites, only: [:new, :create, :show, :update, :edit]


  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    Site.create(site_params)
    redirect_to root
    # we probably need to add a redirect to the /me something
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    @site.update(site_params)
    redirect_to site_path(@site)
  end


  private


  def site_params
     params.require(:site).permit(:daily_price, :title, :description, :category, :available, :user, :lat, :lng, :street, :city
    , :zip_code)
  end
end
