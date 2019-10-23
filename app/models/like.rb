class Like < ApplicationRecord
  belongs_to :job_posting
  belongs_to :applicant
end
