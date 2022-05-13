class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  @requires_auth = true

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/', notice: 'You must be logged in to view that page!'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
