class Employer < ApplicationRecord
    has_many :job_postings
    has_secure_password

    validates :password, confirmation: true
    validates :password_confirmation, presence: true
end
