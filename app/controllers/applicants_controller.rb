class ApplicantsController < ApplicationController
    # before_action :authorize_user, except: [:index, :show]
    def index
        @applicants = Applicant.all
    end

    def new
        @applicant = Applicant.new
    end

    def login
    end

    def signup
    end

    def create
        @applicant = Applicant.create(applicant_params)
        

        if @applicant.valid?
            session[:applicant_id] = @applicant.id
            redirect_to applicant_path
        end
    end

    def show
        @applicant = Applicant.find(params[:id])
    end

    def edit
        @applicant = Applicant.find(params[:id])
    end

    def update
        @applicant = Applicant.find(params[:id])
        if @applicant.update(applicant_params)
            redirect_to applicant_path
        else
            render :edit
        end
    end

    def destroy
        @applicant = Applicant.find(params[:id])
        @applicant.destroy
        redirect_to applicants_path
    end

    private

    def applicant_params
        params.require(:applicant).permit(:name, :email, :password_digest)
    end
end
