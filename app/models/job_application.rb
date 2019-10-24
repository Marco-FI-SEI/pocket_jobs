class JobApplication < ApplicationRecord
    belongs_to :applicant
    belongs_to :job_posting

    def applied_jobs
        self.find_by(:interest => true)

    end
end
