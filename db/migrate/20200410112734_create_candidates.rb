class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.references :user, null: false, foreign_key: true, unique: true
      t.string :candidate_fullname, limit: 40, null: false
      t.date :date_of_birth
      t.string :phone, limit: 20
      t.string :avatar
      t.string :cv

      t.timestamps
    end
  end
end
