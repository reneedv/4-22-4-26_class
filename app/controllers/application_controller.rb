class ApplicationController < ActionController::Base
  before_filter :authenticate_student!
  protect_from_forgery
end
