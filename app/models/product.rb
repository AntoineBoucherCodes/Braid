class Product < ApplicationRecord
  include PgSearch::Model
  belongs_to :store
  has_one :categorie
  has_many_attached :photos
  has_many :order_items
  # multisearchable against: [:name, :description]
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
