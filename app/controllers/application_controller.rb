# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  include Facebooker2::Rails::Controller
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def ensure_authenticated
    if current_facebook_user.nil?
      redirect_to url_for(:controller=>"login")
    else
      User.find_or_create_by_facebook_id(current_facebook_user.id)
      current_facebook_user.fetch
    end
  end
end
