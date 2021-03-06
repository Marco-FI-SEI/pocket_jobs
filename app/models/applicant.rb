class Applicant < ApplicationRecord
    has_many :job_applications
    has_many :job_postings, through: :job_applications
    has_secure_password

    validates :password, confirmation: true
    validates :password_confirmation, presence: true


    #  Get all of an applicant's job applications
    # Select only the ones where interest == true
    # Map that to all of the job postings that those applications belong to
    def interested_jobs
        g = self.job_applications.select{|job_application|job_application.interest == true}
        g.map{|job_application|job_application.job_posting }
    end


    def random_unacknowledged_jobs
        d = self.job_postings.select{|job_posting|job_posting.acknowledged? == false}

        d.sample
    end


end
