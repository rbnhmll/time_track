class AddColumnsToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :address, :string
    add_column :organizations, :website, :string
  end
end
