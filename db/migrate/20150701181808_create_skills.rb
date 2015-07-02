class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :profile_id, null: false
      t.string :name, null: false
    end
  end
end
