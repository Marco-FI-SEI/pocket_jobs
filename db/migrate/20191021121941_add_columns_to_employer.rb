class AddColumnsToEmployer < ActiveRecord::Migration[6.0]
  def change
    add_column :employers, :name, :string
    add_column :employers, :industry, :string
    add_column :employers, :company_size, :string

  end
end
