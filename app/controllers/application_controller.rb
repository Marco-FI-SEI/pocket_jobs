class ApplicationController < ActionController::Base
<<<<<<< HEAD
    helper_method :current_applicant
    
    def current_applicant
        if session[:applicant_id] 
            Applicant.find(session[:applicant_id])
        end
    end
=======
    include DefaultPageContent


>>>>>>> general_pages
end
