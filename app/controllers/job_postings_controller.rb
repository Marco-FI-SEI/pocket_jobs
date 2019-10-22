class JobPostingsController < ApplicationController
    def index
        @job_postings = JobPosting.all
    end

    def new
        @job_posting = JobPosting.new
    end

    def create
        @job_posting = JobPosting.create(job_posting_params)
    end

    def show
        @job_posting = JobPosting.find(params[:id])
    end

    def edit
        @job_posting = JobPosting.find(params[:id])
    end

    def update
        @job_posting = JobPosting.find(params[:id])
        if @job_posting.update(job_posting_params)
            redirect_to job_posting_path
        else
            render :edit
        end
    end

    def destroy
        @job_posting = JobPosting.find(params[:id])
        @job_posting.destroy
        redirect_to job_postings_path
    end

    private

    def applicant_params
        params.require(:job_posting).permit(:closing_date, :location, :title, :requirement, :description, :work_times)
    end
end
