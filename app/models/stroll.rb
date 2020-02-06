class Stroll < ApplicationRecord
  belongs_to :dog_sitter
  
  has_many :stroll_dogs
  has_many :dogs, through: :stroll_dogs
end
