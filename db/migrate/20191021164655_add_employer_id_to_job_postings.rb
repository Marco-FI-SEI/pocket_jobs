class AddEmployerIdToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :employer_id, :integer
  end
end
