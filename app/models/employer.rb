class Employer < ApplicationRecord
    has_many :job_postings

    validates :password, confirmation: true
    validates :password_confirmation, presence: true
end
