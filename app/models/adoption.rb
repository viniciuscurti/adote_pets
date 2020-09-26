class Adoption < ApplicationRecord
  belongs_to :pet
  validates :owner_name, presence: true
end
