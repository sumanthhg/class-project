class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do 
  	redirect_to root_path, notice: "Page doesn't exist"
  end

  rescue_from ActiveRecord::RecordNotFound do
  	redirect_to root_path, notice: "Record Not Found"
end

end
