class JobApplication < ApplicationRecord
    belongs_to :applicant
    belongs_to :job_posting

    def self.applied_jobs
        JobApplication.where(:interest => true)
    end

    def applied_job_postings
        if self.interest == true
            self.job_posting.title
        end
    end

  

end
