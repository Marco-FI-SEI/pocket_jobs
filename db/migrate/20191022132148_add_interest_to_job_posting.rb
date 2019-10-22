class AddInterestToJobPosting < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :interest, :boolean
  end
end
