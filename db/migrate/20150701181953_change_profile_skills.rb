class ChangeProfileSkills < ActiveRecord::Migration
  def change
    remove_column :profiles, :skills, :integer
  end
end
