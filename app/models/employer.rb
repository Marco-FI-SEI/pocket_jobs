class Employer < ApplicationRecord
    has_many :job_postings

    validates :password_digest, confirmation: true
    validates :password_digest_confirmation, presence: true
end
