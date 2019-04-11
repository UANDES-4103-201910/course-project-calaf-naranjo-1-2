class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :username
      t.string :password
      t.text :bio
      t.string :email
      t.string :geofence
      t.string :location
      t.longitude :float
      t.float :latitude

      t.timestamps
    end
  end
end
