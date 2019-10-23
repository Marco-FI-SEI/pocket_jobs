class Applicant < ApplicationRecord
    has_many :job_applications
    has_many :job_postings, through: :job_applications
    has_secure_password

    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    has_many :likes, dependent: :destroy
end
