class SitesController < ApplicationController

  # resources :sites, only: [:new, :create, :show, :update, :edit]
  skip_before_action :authenticate_user! , only: [:index]

  def show
    @site = Site.find(params[:id])
    @stay = Stay.new(site: @site, user_id: current_user.id)
  end


  def new
    @site = Site.new
  end


  def create
    @site = Site.new(site_params)
    @site.user = current_user
    @site.category = params[:category]
    @site.save
    redirect_to site_path(@site)
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

  def search
    @sites = Site.all
  end

  def index
    @categories = ['Nuclear winter', 'Abandonned sanatorium',
    'Bunker','Abandoned factory']

    @min_price = Site.minimum(:daily_price)
    @max_price = Site.maximum(:daily_price)

    @sites = Site.all

    if params[:range_price]
        price_range = params[:range_price].split("%2C")
        @min_price_result = price_range.join.split(",")[0].to_f
        @max_price_result = price_range.join.split(",")[1].to_f
        @results = Site.where(["daily_price >= '%s' and daily_price <= '%s'", @min_price_result, @max_price_result])
    else
       @results = @sites
    end

    # @results = Site.where(category: params[:category])

  end


  private


  def site_params
     params.require(:site).permit(:daily_price, :title, :description, :category, :available, :user, :lat, :lng, :street, :city, :zip_code)
  end
end
