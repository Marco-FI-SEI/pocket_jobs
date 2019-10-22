class ApplicationController < ActionController::Base
  include DefaultPageContent
 helper_method :current_applicant
#  :authorize_user

    def current_applicant
        if session[:applicant_id]
            Applicant.find(session[:applicant_id])
        end
    end


    def authorize_user
        unless current_applicant
            flash[:notice] = "Sorry, you must be logged in to use this use this feature"
            redirect_to applicant_path
        end
    end

end
