class CreateJobPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :job_posts do |t|
      t.references :employer, null: false, foreign_key: true
      t.integer :job_location, null: false, default: 1
      t.integer :job_type, null: false
      t.integer :job_status, null: false, default: 1
      t.integer :post_priority, null: false, default: 5
      t.integer :salary_min, null: false, default: 0
      t.integer :salary_max, default: 0
      t.string :post_title, null: false
      t.string :job_description, null: false
      t.date :job_expired_date, null: false

      t.timestamps
    end
  end
end
