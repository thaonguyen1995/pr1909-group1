class CreateApplyActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :apply_activities do |t|
      t.references :job_post
      t.references :candidate
      t.timestamps
    end
  end
end
