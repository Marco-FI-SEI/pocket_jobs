class Applicant < ApplicationRecord
    has_many :job_applications
    has_many :job_postings, through: :job_applications
    has_secure_password
    has_many :likes, dependent: :destroy
end
