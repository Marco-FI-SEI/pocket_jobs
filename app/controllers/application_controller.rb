class ApplicationController < ActionController::Base
  include DefaultPageContent
  helper_method :current_applicant

  def current_applicant
    if session[:applicant_id]
      Applicant.find(session[:applicant_id])
    end
  end
end
