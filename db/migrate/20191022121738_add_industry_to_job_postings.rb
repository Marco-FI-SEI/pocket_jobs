class AddIndustryToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :industry, :string
  end
end
