class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :refferal
      t.string :desease_name
      t.string :detail
      t.references :patient, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
