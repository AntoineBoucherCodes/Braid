class Product < ApplicationRecord
  belongs_to :store
  has_one :categorie
end
