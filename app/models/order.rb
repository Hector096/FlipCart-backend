class Order < ApplicationRecord
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  has_and_belongs_to_many :products
  belongs_to :user
end
