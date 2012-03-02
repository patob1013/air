module ApplicationHelper
  
  def reserve_button
    if session[:user_id].present?
      link_to "Reserve Now!", new_reservation_url(:flight_id => @flight.id)
    else
      link_to "Sign In To Reserve!", signin_url
    end
  end
  
end
