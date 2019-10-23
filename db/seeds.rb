
Applicant.destroy_all
Employer.destroy_all
JobApplication.destroy_all
JobPosting.destroy_all

applicant1 = Applicant.create(name: 'Jeremy', email: 'jeremy.amram@gmail.com', password_digest: 'password1')
applicant2 = Applicant.create(name: 'Milen', email: 'milen.bitch@gmail.com', password_digest: 'password2')

applicant1_id = applicant1.id
applicant2_id = applicant2.id


employer1 = Employer.create(name: 'Mondelez', industry: 'Consumer Goods', company_size: 'Corporate', email: 'recruiting@mondelez.com', password_digest: 'password3')
employer2 = Employer.create(name: 'Pfizer', industry: 'Pharmaceutical', company_size: 'Corporate', email: 'recruiting@pfizer.com', password_digest: 'password4')

employer1_id = employer1.id
employer2_id = employer2.id


job_posting1 = JobPosting.create(
closing_date: Date.new,
location: 'London',
title: 'Seasonal Sales Assistants',
requirement: "Similar experience within a retail or service environment, particularly with a fashion/lifestyle brand would be ideal.
Track record in providing excellent customer experiences
Excellent communication skills, able to build relationships with a diverse range of customers
Results oriented and proud to be contribute to the team by achieving store goals and objectives
Flexible Availability to work weekends, evenings and over the full Seasonal period (Black Friday, Christmas, New Year etc)
- Please note we will be unable to consider your application if you are unable to meet these requirements -
London Based
Professional, but also authentic and fearless!
Retail Sales: 1 year (Preferred)
Customer Service: 1 year (Preferred)",
description: "Tis the season! (Well almost) - and lets face it, who doesn't love getting Docs for Christmas!
Our Seasonal period is always extra busy and we need some awesome people to come and give our London teams a
hand over the period between September and December. If you love our brand and what we stand for, and can give
top-notch customer service to five people all at once AND spread some Seasonal cheer, then read on!
We are looking for free thinking, passionate individuals who will provide a one of a kind, outstanding customer
experience and truly represent the Dr Martens brand through showcasing our products and ensuring that each and
every customer is blown away each time they visit.",
work_times: 'Full Time',
employer_id: employer1_id,
salary: 70000,
industry: employer1.industry)

job_posting2 = JobPosting.create(
closing_date: Date.new,
location: 'Manchester',
title: 'Salesforce Consultant',
requirement: 'Experience with Salesforce configuration
Prior experience with documenting Client requirements
Experience with enterprise integration tools, and extract, transformation and load (ETL) tools
Growth mindset
More than 1+ Salesforce certifications
Minimum 1 year experience with Salesforce implementations', 
description: 'The soul mission of my client is to simplify and improve their business processes effectively. 
Nowadays they are focusing aggressively on business growth and improving their services, so they seek to hire 
a Salesforce Consultant who has excellent organisational skills and negotiation skills. If you breathe technological 
and digital innovation and are up for exciting challenges, this is just the job for you.', 
work_times: 'Part Time', 
employer_id: employer2, 
salary: 20000, 
industry: Employer.second.industry)

JobPosting.create(closing_date: Date.new, location: 'London', title: 'Junior Software Engineer',

Minimum 1 year experience with Salesforce implementations',
description: 'The soul mission of my client is to simplify and improve their business processes effectively.
Nowadays they are focusing aggressively on business growth and improving their services, so they seek to hire
a Salesforce Consultant who has excellent organisational skills and negotiation skills. If you breathe technological
and digital innovation and are up for exciting challenges, this is just the job for you.',
work_times: 'Part Time',
employer_id: employer2_id,
salary: 20000,
industry: employer2.industry)

job_posting3 = JobPosting.create(closing_date: Date.new, location: 'London', title: 'Junior Software Engineer',
requirement: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
officia deserunt mollit anim id est laborum.', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
sunt in culpa qui officia deserunt mollit anim id est laborum.', work_times: 'Full Time', employer_id: employer1_id,
salary: 70000, industry: employer1.industry)

job_posting4 = JobPosting.create(closing_date: Date.new, location: 'Manchester', title: 'Tester', requirement: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
officia deserunt mollit anim id est laborum.', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
sunt in culpa qui officia deserunt mollit anim id est laborum.', work_times: 'Part Time', employer_id: employer2_id,
salary: 20000, industry: employer2.industry)


job_posting1_id= job_posting1.id
job_posting2_id = job_posting2.id

job_application1 = JobApplication.create(job_posting_id: job_posting1_id, applicant_id: applicant1_id, interest: true)
job_application2 = JobApplication.create(job_posting_id: job_posting2_id, applicant_id: applicant2_id, interest: false)

job_application1_id = job_application1.id
job_application2_id = job_application2.id


puts "SEEDED"
