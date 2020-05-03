class Post < ApplicationRecord
    validates :item_image, presence: true

    validates :category_cd, presence: true

    validates :item_title, presence: true
    validates :item_title, length: { maximum: 20 }

    validates :comment, presence: true
    validates :comment, length: { maximum: 300 }
end
