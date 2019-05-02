class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.references :post, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
