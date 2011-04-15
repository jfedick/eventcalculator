class EventsController < ApplicationController

  def new
    @event = Event.new
    @regions = Region.all
    @events = Event.all
    @categories = Category.all
  end
  
  def add_event_region
    @sections = Section.find_all_by_region_id(params["region_id"])
  end
  
  def create
    @event = Event.new
    @event.description = params[:event][:description]
    @event.region_id = params[:event][:region_id]
    @event.category_id = params[:event][:category]
    if @event.save
      flash[:notice] = "Event saved!"
      redirect_to "/add_event"
    else
      flash[:notice] = "Something happened. Please try again!"
      redirect_to "/add_event"
    end
  end
  
  def index
    @events=Event.all
  end  
  
  def show
    @event = Event.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
    @regions = Region.all
    @categories = Category.all
  end
  
  def update
    @event = Event.find(params[:id])
    @event.description = params[:event][:description]
    @event.region_id = params[:event][:region_id]
    @event.category_id = params[:event][:category]
    if @event.save
      flash[:notice] = "Event saved!"
      redirect_to "/index"
    else
      flash[:notice] = "Something happened. Please try again!"
      redirect_to "/index"
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
        flash[:notice] = "Event destroyed!"
        redirect_to "/index"
      else
        flash[:notice] = "Something happened. Please try again!"
        redirect_to "/index"
      end    
  end
  
end
