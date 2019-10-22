class JobApplicationsController < ApplicationController
    def index
        @job_applications = JobApplication.all
    end

    def new
        @job_application = JobApplication.new
    end

    def create
        @job_application = JobApplication.create(job_application_params)
    end

    def show
        @job_application = JobApplication.find(params[:id])
    end

    def edit
        @job_application = JobApplication.find(params[:id])
    end

    def update
        @job_application = JobApplication.find(params[:id])
        if @job_application.update(job_application_params)
            redirect_to job_applications_path
        else
            render :edit
        end
    end

    def destroy
        @job_application = JobApplication.find(params[:id])
        @job_application.destroy
        redirect_to job_applications_path
    end

    private

    def applicant_params
        params.require(:job_application).permit(:job_posting_id, :applicant_id)
    end
end
