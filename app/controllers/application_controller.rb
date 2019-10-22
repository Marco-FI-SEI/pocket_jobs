class ApplicationController < ActionController::Base
    helper_method :current_applicant

    def current_applicant
        if session[:applicant_id]
            Applicant.find(session[:applicant_id])
        end
    end
    include DefaultPageContent


end
