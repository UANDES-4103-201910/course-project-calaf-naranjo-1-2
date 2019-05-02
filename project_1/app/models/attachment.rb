class Attachment < ApplicationRecord
  belongs_to :post

  validates :name, prescence: true
end
