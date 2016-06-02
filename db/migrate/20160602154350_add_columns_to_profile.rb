class AddColumnsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :company, :string
    add_column :profiles, :employee_number, :integer
    add_column :profiles, :approver, :string
  end
end
