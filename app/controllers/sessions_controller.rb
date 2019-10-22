class SessionsController < ApplicationController

    def new 

    end

    def create 
    
    @applicant = Applicant.find_by(name: params[:applicant][:name])
    
    if @applicant && @applicant.authenticate(params[:user][:password])
        session[:applicant_id] = @applicant.id
        redirect_to applicant_path
    else 
    flash[:notice] = "Sorry, we can't find a user with that username and password"
     redirect_to new_session_path

    end

    end

    def destroy 
        session.destroy

        redirect_to new_session_path

    end
end
