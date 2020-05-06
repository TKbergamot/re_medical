class CreatePatientComments < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_comments do |t|
      t.text :content
      t.references :patient, foreign_key: true
      t.references :opinion, foreign_key: true

      t.timestamps
    end
  end
end
