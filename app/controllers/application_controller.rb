class ApplicationController < ActionController::Base
    # before_action :authenticate

    # def authenticate
    #     if @current_user.present?
    #         return @current_user
    #     elsif params.has_key?(:id) and User.exists?(params[:id])
    #         @current_user = params[:id]
    #     else
    #         flash[:error] = "No user exists with this ID. Please include the ID in the API request."
    #     end
    # end

end
