class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :name_kana
      t.string :founder
      t.string :founder_kana
      t.string :administer
      t.string :administer_kana
      t.string :post_code
      t.string :prefecture
      t.string :address
      t.string :phone_number
      t.string :homepage
      t.string :description
      t.string :image
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
