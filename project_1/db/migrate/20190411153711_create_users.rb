class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      has_many posts, dependent: :destroy
      validates:email, format: {with: URI::MailTo::EMAIL_REGEXP}
      validates: username, with: /^[A-Za-z0-9]+$/ length {in: 3..20}
      validates:password, with: /^[A-Za-z0-9]+$/, length: {in: 9..12}

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
