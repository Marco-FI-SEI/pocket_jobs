class LikesController < ApplicationController
    before_action :find_job_posting
    before_action :find_like, only: [:destroy]

    def create
        if already_liked?
            flash[:notice] = "You can't like more than once."
        else
            @job_posting.likes.create(applicant_id: current_applicant.id)
        end
        redirect_to job_posting_path(@job_posting)
    end

    def destroy
        if !(already_liked?)
            flash[:notice] = "Cannot unlike"
        else
            @like.destroy
        end
        redirect_to job_posting_path(@job_posting)
    end

    def find_like
        @like = @job_posting.likes.find(params[:id])
    end

    private

    def already_liked?
        Like.where(applicant_id: current_applicant(@applicant.id), job_posting_id: params[:job_posting_id]).exists? 
    end

    def find_job_posting
        @job_posting = JobPosting.find(params[:job_posting_id])
    end
end
