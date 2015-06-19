class AddNameToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string, null: false
  end
end
