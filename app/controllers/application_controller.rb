class ApplicationController < ActionController::Base
    before_action :authenticate

    def authenticate
        if params.has_key?(:id) and User.exists?(params[:id])
            @current_user = User.find(params[:id])
        else
            flash[:error] = "No user exists with this ID. Please include the ID in the API request."
        end
         
    end
end
