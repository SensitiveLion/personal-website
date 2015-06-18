class CreateJobListing < ActiveRecord::Migration
  def change
    create_table :job_listings do |t|
      t.integer :user_id, null: false
      t.integer :company_id, null: false
      t.string :title, null: false
      t.string :description, null: false
      t.string :contact
    end
  end
end
