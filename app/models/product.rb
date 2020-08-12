class Product < ApplicationRecord
    belongs_to :category
    belongs_to :order
    has_many :order_items, dependent: :destroy
    has_many :rates, dependent: :destroy
    has_many :reviews
end
