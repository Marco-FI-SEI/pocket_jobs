class RemoveInterestFromJobPostings < ActiveRecord::Migration[6.0]
  def change
    remove_column :job_postings, :interest, :boolean
  end
end
