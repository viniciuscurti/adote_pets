class Adoption < ApplicationRecord
  belongs_to :pet
  validates :adopter, presence: true
end
