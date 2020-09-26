class Pet < ApplicationRecord
  has_one :adoption, dependent: :destroy
  has_one_attached :photo
end
