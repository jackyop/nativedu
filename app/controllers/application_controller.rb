class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  def signed_in_admin
		redirect_to root_path, notice: "You are not admin" unless admin?
  end
end
