class PagesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_page

  before_filter :get_variables

  def home
  end

  def george_o_malley
  end

  def testimonials
  end

  def contact
  end

  def about
  end

  protected
  def get_variables
    @projects = Project.all
  end

  private
  def invalid_page
     logger.error "attempt to access invalid page #{params[:id]}"
     redirect_to projects_url
   end

end
