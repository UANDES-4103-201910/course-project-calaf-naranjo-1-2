class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      has_many posts, dependent: :destroy
      validates:email, format: {with: URI::MailTo::EMAIL_REGEXP}
      validates: username, with: /^[A-Za-z0-9]+$/ length {in: 3..20}
      validates:password, with: /^[A-Za-z0-9]+$/, length: {in: 9..12}

      t.string :username
      t.string :password
      t.text :bio
      t.string :email
      t.string :geofence
      t.string :location
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
