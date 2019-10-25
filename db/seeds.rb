
Applicant.destroy_all
Employer.destroy_all
JobApplication.destroy_all
JobPosting.destroy_all

applicant1 = Applicant.new(name: "Jeremy", email: "jeremy.amram@gmail.com", password: "password1", password_confirmation: "password1")
applicant1.save

applicant2 = Applicant.new(name: "Milen", email: "milen.bitch@gmail.com", password: "password2", password_confirmation: "password1")
applicant2.save



applicant1_id = applicant1.id
applicant2_id = applicant2.id

employer1 = Employer.new(name: "Mondelez", industry: "Consumer Goods", company_size: "Corporate", email: "recruiting@mondelez.com", password: "password1", password_confirmation: "password1")
employer1.save

employer2 = Employer.new(name: "Pfizer", industry: "Pharmaceutical", company_size: "Corporate", email: "recruiting@pfizer.com", password: "password1", password_confirmation: "password1")
employer2.save

employer3 = Employer.new(name: "West London Waste Authority", industry: "Waste", company_size: "Large", email: "recruiting@wlwa.com", password: "password1", password_confirmation: "password1")
employer3.save

employer4 = Employer.new(name: "EnviroBuild", industry: "Finance", company_size: "Large", email: "recruiting@ebuild.com", password: "password1", password_confirmation: "password1")
employer4.save

employer1_id = employer1.id
employer2_id = employer2.id
employer3_id = employer3.id
employer4_id = employer4.id


job_posting1 = JobPosting.new(
  closing_date: Date.new,
  location: "London",
  title: "Seasonal Sales Assistants",
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
  work_times: "Full Time",
  employer_id: employer1_id,
  salary: 70000,
  industry: employer1.industry,
  acknowledged?: false
)
job_posting1.save

job_posting2 = JobPosting.new(
  closing_date: Date.new,
  location: "Manchester",
  title: "Salesforce Consultant",
  requirement: "Experience with Salesforce configuration
Prior experience with documenting Client requirements
Experience with enterprise integration tools, and extract, transformation and load (ETL) tools
Growth mindset
More than 1+ Salesforce certifications
Minimum 1 year experience with Salesforce implementations",
description: "The soul mission of my client is to simplify and improve their business processes effectively.
Nowadays they are focusing aggressively on business growth and improving their services, so they seek to hire
a Salesforce Consultant who has excellent organisational skills and negotiation skills. If you breathe technological
and digital innovation and are up for exciting challenges, this is just the job for you.",
  work_times: "Part Time",
  employer_id: employer2_id,
  salary: 20000,
  industry: employer2.industry,
  acknowledged?: false
)

job_posting2.save

job_posting3 = JobPosting.new(closing_date: Date.new, location: "London", title: "Junior Software Engineer",
                              requirement: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
officia deserunt mollit anim id est laborum.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
sunt in culpa qui officia deserunt mollit anim id est laborum.", work_times: "Full Time",
                              employer_id: employer1_id,
                              salary: 70000,
                              industry: employer1.industry,
                              acknowledged?: false)

job_posting3.save

job_posting4 = JobPosting.new(closing_date: Date.new, location: "Manchester", title: "Tester", requirement: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
officia deserunt mollit anim id est laborum.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
sunt in culpa qui officia deserunt mollit anim id est laborum.", work_times: "Part Time",
                              employer_id: employer2_id,
                              salary: 20000,
                              industry: employer2.industry,
                              acknowledged?: false)

job_posting4.save

job_posting5 = JobPosting.new(
  closing_date: Date.new,
  location: "West Drayton",
  title: "Data Analyst",
  requirement: "Advance Excel: 5 years (Required)
  Handling large volumes of data: 2 years (Required)
  Visual Basic: 2 years (Required)",
  description: "We are looking for a Data Analyst, with advanced Excel skills,VBA and
  ideally experience of developing PowerBi reports, to ensure the effective operation of 
  waste data systems and delivery of good quality management information.
  This role provides an opportunity to shape the way data services are delivered in a small 
  but quickly developing public sector organisation. The post will be responsible for recruiting 
  and managing a part time junior data analyst to support the delivery of wide ranging work.
  For more details and to download the job description please visit our website 
  https://westlondonwaste.gov.uk/.
  Previous applicants need not reapply.",
  work_times: "Full Time",
  employer_id: employer3_id,
  salary: 40000,
  industry: employer3.industry,
  acknowledged?: false
)
job_posting5.save

job_posting6 = JobPosting.new(
  closing_date: Date.new,
  location: "Leeds",
  title: "Publishing Manager",
  requirement: "Proven technical aptitude and ability to quickly learn and use new software, regulations and quality standards
  Strategic/forward thinking
  Ability to lead projects and technical implementation changes
  Proven experience Project Managing or delivering through others in a matrix environment (Global Project Management desirable)
  Demonstrated coordination of activities in a highly regulated environment
  Experience of successfully mentoring others
  An understanding of the concepts around regulatory affairs, knowledge of the drug development and regulatory submissions processes would be advantageous.
  Qualifications (i.e., preferred education, experience, attributes)
  Bachelor Degree Level is desirable",
  description: "We are looking for a dynamic and enthusiastic Publishing Manager to join Publishing team within Publishing
  and Product License Support (PPLS). You will provide technical and project management expertise to 
  the Global Publishing organisation, ensuring the definition and delivery of initiatives to meet our 
  Publishing group future vision. This you will be a collaborative partner with the Information Management 
  and Pfizer Digital groups to help identify and implement strategic solutions, to meet the demands of regulatory 
  submission publishing. Members of the Publishing team hold responsibility for defining and upholding 
  Pfizer publishing standards and practices to meet agency requirements globally. Our Publishing Manager will 
  provide technical expertise to partnering business lines, in order to drive excellence in the design, 
  implementation and delivery of global regulatory submissions. This role reports to the UK Publishing 
  Hub Lead and sits within a team working to tight, business-critical deadlines within a highly regulated environment.",
  work_times: "Part Time",
  employer_id: employer2_id,
  salary: 30000,
  industry: employer2.industry,
  acknowledged?: false
)

job_posting6.save

job_posting7 = JobPosting.new(closing_date: Date.new, location: "Birmingham", title: "Lead Data Scientist",
requirement: "Bachelor degree or higher in a STEM subject
Extensive experience of Data Science from data management through to advanced modelling and communicating outputs
Proven track record of the application of data science in a commercial environment
Solid understanding in applying a range of statistical, machine learning and AI methods to real-world problems
Advanced knowledge of programming languages such as R, Java script and Python
Expertise in Applied statistics
Ability to simplify complex problems and communicate to wide audience
Global experience and additional language preferred", 
description: "What makes working at Mondelēz International so special? Many things. The iconic brands 
and global nature of our business. The continuous innovation and endless opportunities to grow. The 
chance, each and every day, to put a smile on people’s faces. We’re the world’s leading maker of 
Chocolate, Biscuits, Candy and Gum with billion-dollar brands like Cadbury, Milka, Prince and Oreo 
and we now have an exciting opportunity to join our team.
The Senior Associate Principal Scientist- Data Science will be responsible for leading a small team 
to organise, mine and visualise complex R&D data to deliver new insights to enable rapid, high quality 
innovation across our chocolate, biscuit, gum & candy categories. The successful candidate will explore
 opportunities from a wide range of data sources and types.", 
 work_times: "Full Time",
  employer_id: employer1_id,
  salary: 70000,
  industry: employer1.industry,
  acknowledged?: false)

job_posting7.save

job_posting8 = JobPosting.new(closing_date: Date.new, location: "Middlesex", title: "Sales Analyst", 
requirement: "Educated to Degree Level or equivalent.
A wealth of Commercial / Analytical experience/ FMCG.
Analytical and data literate with knowledge of MS Office.
IT Literate with advanced ability with MS Excel/ Powerpoint.", 
description: "We are looking for a Foodservice Analyst. The role will be key in unlocking White Space
 growth in the fast-growing Foodservice channel by identifying key market trends and opportunities. 
 Raise the standard of customer & category sales analysis and insight in the Wholesale, Foodservice and 
 Away From Home areas by delivering leading edge analytics, reports & powerful insights. Focus on driving best
  practice through simplification, efficiency, consistency & aligning common outputs across accounts.",
  work_times: "Part Time",
  employer_id: employer1_id,
  salary: 40000,
  industry: employer1.industry,
  acknowledged?: false)

job_posting8.save


job_posting1_id = job_posting1.id
job_posting2_id = job_posting2.id
job_posting3_id = job_posting3.id
job_posting4_id = job_posting4.id
job_posting5_id = job_posting5.id
job_posting6_id = job_posting6.id
job_posting7_id = job_posting7.id
job_posting8_id = job_posting8.id

job_application1 = JobApplication.new(job_posting_id: job_posting1_id, applicant_id: applicant1_id, interest: true)
job_application1.save

job_application2 = JobApplication.new(job_posting_id: job_posting2_id, applicant_id: applicant1_id, interest: true)
job_application2.save

job_application1_id = job_application1.id
job_application2_id = job_application2.id

puts "SEEDED"
