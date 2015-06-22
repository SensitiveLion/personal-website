class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.text :skills, null: false
      t.text :experience, null: false
      t.string :biography, null: false
      t.string :image_link, null: false
    end
  end
end
