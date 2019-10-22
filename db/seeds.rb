# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Applicant.destroy_all
Employer.destroy_all
JobApplication.destroy_all
JobPosting.destroy_all

Applicant.create(name: 'Jeremy', email: 'jeremy.amram@gmail.com')
Applicant.create(name: 'Milen', email: 'milen.bitch@gmail.com')

applicant1 = Applicant.first.id 
applicant2 = Applicant.second.id 


Employer.create(name: 'Mondelez', industry: 'Consumer Goods', company_size: 'Corporate', email: 'recruiting@mondelez.com')
Employer.create(name: 'Pfizer', industry: 'Pharmaceutical', company_size: 'Corporate', email: 'recruiting@pfizer.com')

employer1 = Employer.first.id
employer2 = Employer.second.id


JobPosting.create(closing_date: Date.new, location: 'London', title: 'Junior Software Engineer', 
requirement: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
officia deserunt mollit anim id est laborum.', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing 
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
sunt in culpa qui officia deserunt mollit anim id est laborum.', work_times: 'Full Time', employer_id: employer1, 
salary: 70000)
JobPosting.create(closing_date: Date.new, location: 'Manchester', title: 'Tester', requirement: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
officia deserunt mollit anim id est laborum.', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing 
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
sunt in culpa qui officia deserunt mollit anim id est laborum.', work_times: 'Part Time', employer_id: employer2, 
salary: 20000)

job_posting1= JobPosting.first.id
job_posting2 = JobPosting.second.id

JobApplication.create(job_posting_id: job_posting1, applicant_id: applicant1)
JobApplication.create(job_posting_id: job_posting2, applicant_id: applicant2)

job_application1 = JobApplication.first.id 
job_application2 = JobApplication.second.id 


puts "SEEDED"