class PagesController < ApplicationController

  def go
    chance = 100
    random_number = rand(100)
    if random_number < chance
      random_number_2 = rand(10)
      case random_number_2
       when 1
         results = " in region 1"
         random_number_3 = rand (10)
         if random_number_3 == 1
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 2
         results = " in region 2"
         random_number_3 = rand (10)
         if random_number_3 === 1..3
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 3
         results = " in region 3"
         random_number_3 = rand (10)
         if random_number_3 === 1..2
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when  4
         results = " in region 4"
         random_number_3 = rand (10)
         if random_number_3 === 1..8
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 5
         results = " in region 5"
         random_number_3 = rand (10)
         if random_number_3 === 1..5
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 6
         results = " in region 6"
         random_number_3 = rand (10)
         if random_number_3 === 1..4
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 7
         results = " in region 7"
         random_number_3 = rand (10)
         if random_number_3 === 1..4
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 8
         results = " in region 8"
         random_number_3 = rand (10)
         if random_number_3 === 1..7
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 9
         results = " in region 9"
         random_number_3 = rand (10)
         if random_number_3 === 1..5
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       when 10
         results = " in region 10"
         random_number_3 = rand (10)
         if random_number_3 === 1..5
           results = results + " in section A."
         else
           results = results + " in section B."
         end
         random_number_4 = rand(10)
         results = "Event #{random_number_4} happened" + results
       else
         results = "Error"
       end
    else
      results = "Nothing happened today."
    end
    flash[:notice] = results
    redirect_to "/home"
  end

  



end