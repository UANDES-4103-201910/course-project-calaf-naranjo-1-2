class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      belongs_to :admin
      belongs_to :user
      belongs_to :super_admin
      t.string :location
      t.boolean :privacy
      t.boolean :resolve
      t.datetime :date
      t.string :title
      t.text :description
      t.boolean :dumped
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
