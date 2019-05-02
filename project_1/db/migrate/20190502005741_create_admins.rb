class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.references :user, foreign_key: true
      t.bool :super
      t.string :geofence

      t.timestamps
    end
  end
end
