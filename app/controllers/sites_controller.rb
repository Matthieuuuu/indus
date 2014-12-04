class SitesController < ApplicationController

  # resources :sites, only: [:new, :create, :show, :update, :edit]
  skip_before_action :authenticate_user! , only: [:index]

  def show
    @site = Site.find(params[:id])
    @stay = Stay.new(site: @site, user_id: current_user.id)
  end


  def new
    @site = Site.new
    @categories = ['Nuclear winter', 'Abandonned sanatorium',
  'Bunker','Abandoned factory']
  end


  def create
    @site = Site.create(site_params)
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




    if (params[:range_price] || params[:category])
        price_range = params[:range_price].split("%2C")
        @min_price_result = price_range.join.split(",")[0].to_f
        @max_price_result = price_range.join.split(",")[1].to_f
        @results = Site.where(["daily_price >= '%s' and daily_price <= '%s' and category = '%s' ", @min_price_result, @max_price_result,params[:category]])
    else
       @results = @sites
    end

    # @results = Site.where(category: params[:category])

  end


  private


  def site_params
     params.require(:site).permit(:daily_price, :title, :url, :picture_url, :description, :category, :available, :user, :lat, :lng, :street, :city, :country, :zip_code)
  end
end
