class ApiController < ActionController::Base
  before_filter :check_api_token

private
  def check_api_token
    redirect_to root_path unless params[:token] == "Renee"
  end

end
