class PagesController < ApplicationController

  def go
    
    chance = rand(99)
    
    if chance < 14
      region = Region.all.sample
      category = Category.all.sample
      event = region.events.find_by_category_id(category.id)
    
      if event.nil?
        results = "No event happened today."
      else
        results = event.description
      end
    else
      results = "No event happened today!"  
    end
    
    flash[:notice] = results
    redirect_to "/home"
  end

  



end
