class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :employee_number, :integer
    add_column :users, :company, :string
  end
end
