class RegionsController < ApplicationController

  def new
    @region = Region.new
    @regions = Region.all
  end

  def create
    @region = Region.new
    @region.name = params[:region][:name]
    if @region.save
      
      flash[:notice] = "Region saved!"
      redirect_to "/add_region"
    else
      flash[:notice] = "Something happened. Please try again!"
      redirect_to "/add_region"
    end
  end

end
