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
      t.boolean :blocked
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
