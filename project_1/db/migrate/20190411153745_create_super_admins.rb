class CreateSuperAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :super_admins do |t|
      has_many posts, dependent: :destroy
      validates:email, format: {with: URI::MailTo::EMAIL_REGEXP}
      validates: username, with: /^[A-Za-z0-9]+$/ length {in: 3..20}
      validates:password, with: /^[A-Za-z0-9]+$/, length: {in: 9..12}

      t.string :email
      t.string :password
      t.float :latitude
      t.float :longitude
      t.string :username
      t.text :bio
      t.references :post, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
