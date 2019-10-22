class EmployersController < ApplicationController
  def new
    @applicant = Applicant.new
  end
end
