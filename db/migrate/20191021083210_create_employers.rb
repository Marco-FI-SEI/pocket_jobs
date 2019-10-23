class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :industry
      t.string :company_size
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
