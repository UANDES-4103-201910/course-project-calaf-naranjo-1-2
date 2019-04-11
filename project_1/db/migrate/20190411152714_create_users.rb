class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.text :bio
      t.float :latitude
      t.float :longitude
      t.string :location
      t.boolean :suspended
      t.boolean :blacklisted
      t.bool :blocked
      t.reference :post

      t.timestamps
    end
  end
end
