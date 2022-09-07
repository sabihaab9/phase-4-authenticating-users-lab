class UsersController < ApplicationController
    
    def show
        #Find a user in the database using the user id from the session hash
        user = User.find(session[:user_id])
        #Return the user as a JSON object
        render json: user
    end
end
