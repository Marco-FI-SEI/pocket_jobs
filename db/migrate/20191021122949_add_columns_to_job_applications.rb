class AddColumnsToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :job_posting_id, :integer
    add_column :job_applications, :applicant_id, :integer

  end
end
