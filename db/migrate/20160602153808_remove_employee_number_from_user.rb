class RemoveEmployeeNumberFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :employee_number, :integer
  end
end
