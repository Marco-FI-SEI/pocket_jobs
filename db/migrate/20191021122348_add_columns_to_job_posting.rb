class AddColumnsToJobPosting < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :closing_date, :date 
    add_column :job_postings, :location, :string 
    add_column :job_postings, :title, :string 
    add_column :job_postings, :requirement, :string 
    add_column :job_postings, :description, :string 
    add_column :job_postings, :work_times, :string 

  end
end
