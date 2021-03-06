class Store < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :products, dependent: :destroy
  # include PgSearch::Model
  # multisearchable against: [:name, :description]
end
