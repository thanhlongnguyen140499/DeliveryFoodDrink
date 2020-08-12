class User < ApplicationRecord
    has_many :suggests, dependent: :destroy
    has_many :orders, dependent: :destroy
    has_many :rates, dependent: :destroy
    has_many :reviews
    has_many :messages
    has_many :conversations, foreign_key: :sender_id
end
