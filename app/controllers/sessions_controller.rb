class SessionsController < ApplicationController

    def new

    end

    def create

    @applicant = Applicant.find_by(name: params[:applicant][:name])

    session[:applicant_id] = @applicant.id
    redirect_to job_posting_path(current_applicant.random_unacknowledged_jobs)

    end

    def destroy
        session.destroy
        cookies.delete(:applicant_id)
        redirect_to new_session_path
    end
end
