class JobPosting < ApplicationRecord
    belongs_to :employer
    has_many :job_applications
    has_many :applicants, through: :job_applications 
    has_many :likes, dependent: :destroy

    

end
