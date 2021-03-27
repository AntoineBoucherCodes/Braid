class Product < ApplicationRecord
  belongs_to :store
  has_one :categorie
  has_many_attached :photos
end
