class ApplicationController < ActionController::Base

 # rescue_from ActionController::RoutingError,       with: :redirect_missing      THIS DID NOT SEEM TO WORK SO I USED ROUTES.RB INSTEAD
 # rescue_from ActionController::UnknownController,  with: :redirect_missing
 # rescue_from ActionController::UnknownAction,      with: :redirect_missing

  protect_from_forgery

  before_filter :get_testimonials

  def logged_in_required
    redirect_to root_url
    false
  end


  private
  def get_testimonials
    @testimonials = Testimonial.all
  end

  def redirect_missing
    redirect_to projects_url
  end


end
