class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :picture
      t.string :biography
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
