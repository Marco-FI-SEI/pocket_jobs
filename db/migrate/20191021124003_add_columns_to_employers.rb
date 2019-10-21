class AddColumnsToEmployers < ActiveRecord::Migration[6.0]
  def change
    add_column :employers, :password_digest, :string
    add_column :employers, :email, :string
  end
end
