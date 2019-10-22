class AddSalaryToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :salary, :integer
  end
end
