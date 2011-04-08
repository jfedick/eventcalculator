class EventsController < ApplicationController

  def add
    @event = Event.new
    @regions = Region.all
  end
  
  def add_event_region
    @sections = Section.find_all_by_region_id(params["region_id"])
  end
  
  def create
    event = Event.new(params[:description])
    event.section_id = Section.find(params[:section_id])
    if event.save
      flash[:notice] = "Event saved!"
      redirect_to "/add_event"
    else
      flash[:notice] = "Something happened. Please try again!"
      redirect_to "/add_event"
    end
  end
  
end
