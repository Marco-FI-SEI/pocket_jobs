class AddAcknowledgedToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :acknowledged?, :boolean
  end
end
