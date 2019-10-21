class AddColumnsToApplicants < ActiveRecord::Migration[6.0]
  def change
    add_column :applicants, :name, :string
    add_column :applicants, :email, :string
    add_column :applicants, :password_digest, :string
  end
end
