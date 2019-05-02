class Post < ApplicationRecord
  belongs_to :user
  has_many :attachment
  has_many :comment
  has_many :follow
  has_many :image
  has_many :innapropiate
  has_many :link
  has_many :vote
  has_one :dumpster

  validates :title, presence: true
  validates :description, presence: true  
end
