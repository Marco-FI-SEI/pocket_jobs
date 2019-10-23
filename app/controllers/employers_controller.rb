class EmployersController < ApplicationController
  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.create(employer_params)
    redirect_to employer_path
  end

  def login
  end

  def signup

  end

  def show
    @employer = Employer.find(params[:id])
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])
    if @employer.update(employer_params)
      redirect_to employer_path
    else
      render :edit
    end
  end

  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy
    redirect_to employers_path
  end

  private

  def employer_params
    params.require(:employer).permit!
  end
end
