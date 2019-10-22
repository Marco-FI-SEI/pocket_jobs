class SessionsController < ApplicationController

    def new 

    end

    def create 
    
    @applicant = Applicant.find_by(name: params[:applicant][:name])

    session[:applicant_id] = @applicant.id 
    redirect_to applicant_path

    end

    def destroy 
        session.destroy

        redirect_to new_session_path

    end
end
