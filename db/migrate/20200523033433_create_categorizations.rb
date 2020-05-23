class CreateCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
      t.references :hospital, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
