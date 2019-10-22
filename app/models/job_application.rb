class JobApplication < ApplicationRecord
    belongs_to :applicant
    belongs_to :job_posting
end
