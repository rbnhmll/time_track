class AddDepartmentToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :department, :string
  end
end
