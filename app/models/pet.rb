class Pet < ApplicationRecord
  has_one :adoption, dependent: :destroy
  has_one_attached :photo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
