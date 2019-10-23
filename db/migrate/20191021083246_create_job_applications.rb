class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.integer :job_posting_id
      t.integer :applicant_id
      t.boolean :job_application
      t.boolean :interest
      t.timestamps
    end
  end
end
