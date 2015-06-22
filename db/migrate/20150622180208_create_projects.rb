class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :profile_id, null: false
      t.string :title, null: false
      t.string :link, null: false
      t.string :description, null: false
      t.string :image_link
    end
  end
end
