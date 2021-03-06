class JobApplicationsController < ApplicationController
    
    def index
        @job_applications = current_applicant.job_applications
        
    
    end

    def new
        @job_application = JobApplication.new
    end

    def create

        @job_application = JobApplication.create(applicant_params)
       
        if @job_application.valid? 
          
         redirect_to job_posting_path(current_applicant.random_unacknowledged_jobs)
        else 
            redirect_to request.referrer
        end

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

   

    private

    def applicant_params
        params.require(:job_application).permit(:job_posting_id, :applicant_id, :interest)
    end
end
