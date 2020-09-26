class Pet < ApplicationRecord
  has_one :adoption, dependent: :destroy
end
