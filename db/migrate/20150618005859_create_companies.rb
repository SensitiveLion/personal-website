class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.string :address, null: false
      t.string :size, null: false
      t.string :product_description, null: false
      t.string :company_culture, null: false
    end
  end
end
