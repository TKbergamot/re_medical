class CreateDoctorComments < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_comments do |t|
      t.text :content
      t.references :doctor, foreign_key: true
      t.references :opinion, foreign_key: true

      t.timestamps
    end
  end
end
