class SessionsController < ApplicationController
    #  POST /login
    def create
        #Find a user in the database using the username from params
        user = User.find_by(username: params[:username])
        #Save the user's ID to the session hash
        session[:user_id] = user.id
        #Return the user as a JSON object
        render json: user
    end  

    #  DELETE /logout
    def destroy
        #Remove the user ID from the session hash
        session.delete :user_id
        #Return an empty response with a 204 No Content status code
        head :no_content
    end



    
end
