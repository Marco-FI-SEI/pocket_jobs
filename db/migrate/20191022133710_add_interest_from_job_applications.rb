class AddInterestFromJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :interest, :boolean
  end
end
