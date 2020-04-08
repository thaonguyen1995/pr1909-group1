class CreateJobPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :job_posts do |t|
      t.integer :post_priority
      t.integer :salary_min
      t.integer :salary_max
      t.string :post_title
      t.string :job_description
      t.date :job_expired_date
      t.references :job_location
      t.references :job_type
      t.references :job_status
      t.references :employer

      t.timestamps
    end
  end
end
