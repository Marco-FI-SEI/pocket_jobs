
Applicant.destroy_all
Employer.destroy_all
JobApplication.destroy_all
JobPosting.destroy_all

Applicant.create(name: 'Jeremy', email: 'jeremy.amram@gmail.com', password_digest: 'password1')
Applicant.create(name: 'Milen', email: 'milen.bitch@gmail.com', password_digest: 'password2')

applicant1 = Applicant.first.id
applicant2 = Applicant.second.id


Employer.create(name: 'Mondelez', industry: 'Consumer Goods', company_size: 'Corporate', email: 'recruiting@mondelez.com', password_digest: 'password3')
Employer.create(name: 'Pfizer', industry: 'Pharmaceutical', company_size: 'Corporate', email: 'recruiting@pfizer.com', password_digest: 'password4')

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
salary: 70000, industry: Employer.first.industry)
JobPosting.create(closing_date: Date.new, location: 'Manchester', title: 'Tester', requirement: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
officia deserunt mollit anim id est laborum.', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
sunt in culpa qui officia deserunt mollit anim id est laborum.', work_times: 'Part Time', employer_id: employer2,
salary: 20000, industry: Employer.second.industry)


job_posting1= JobPosting.first.id
job_posting2 = JobPosting.second.id

JobApplication.create(job_posting_id: job_posting1, applicant_id: applicant1, interest: true)
JobApplication.create(job_posting_id: job_posting2, applicant_id: applicant2, interest: false)

job_application1 = JobApplication.first.id
job_application2 = JobApplication.second.id


puts "SEEDED"
