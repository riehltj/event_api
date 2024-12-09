class Type < ApplicationRecord
  has_one_attached :icon
  
  validates :name, presence: true
  validates :icon, presence: true
end