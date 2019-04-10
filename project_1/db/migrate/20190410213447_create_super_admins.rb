class CreateSuperAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :super_admins do |t|
      t.string :email
      t.string :password
      t.float :latitude
      t.float :longitude
      t.string :username
      t.text :bio
      t.reference :post
      t.string :location

      t.timestamps
    end
  end
end
