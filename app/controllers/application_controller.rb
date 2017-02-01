class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  alias acting_user current_user
end
