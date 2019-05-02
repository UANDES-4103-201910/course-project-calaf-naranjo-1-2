class Profile < ApplicationRecord
  belongs_to :user

  validates :city, format: { with: /\A[a-zA-Z]+\z/}
  validates :country, format: { with: /\A[a-zA-Z]+\z/}
end
