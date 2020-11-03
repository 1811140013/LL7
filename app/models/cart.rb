class Cart < ApplicationRecord
    has_many :cart_item
    has_many :cart_item_products,through: :cart_item,source: :product
end
