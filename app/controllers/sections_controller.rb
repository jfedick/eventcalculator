class SectionsController < ApplicationController

  def add
    @section = Section.new
    @regions = Region.all
  end

  def create
    @section = Section.new
    @section.name = params[:section][:name]
    @section.region_id = params[:section][:region_id]
    if @section.save
      
      flash[:notice] = "Section saved!"
      redirect_to "/add_section"
    else
      flash[:notice] = "Something happened. Please try again!"
      redirect_to "/add_section"
    end
  end

end
