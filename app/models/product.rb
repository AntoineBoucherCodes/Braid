class Product < ApplicationRecord
  include PgSearch::Model
  belongs_to :store
  has_one :categorie
  has_many_attached :photos

  # multisearchable against: [:name, :description]
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }

  # relation with order_items
  has_many :order_items, dependent: :destroy
  # before_destroy :ensure_not_referenced_by_any_order_item

  private

  # To prevent the removal of products that are referenced by order_items
  # def ensure_not_referenced_by_any_order_item
  #   unless order_items.empty?
  #     errors.add(:base, 'Order Items present')
  #     throw :abort
  #   end
  # end
end
