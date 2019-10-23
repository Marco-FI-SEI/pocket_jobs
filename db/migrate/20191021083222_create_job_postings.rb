class CreateJobPostings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_postings do |t|
      t.string :closing_date
      t.string :location
      t.string :title
      t.string :requirement
      t.string :description
      t.string :work_times
      t.integer :employer_id
      t.integer :salary
      t.string :industry
      t.boolean :acknowledged?
      t.timestamps
    end
  end
end
