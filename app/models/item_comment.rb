class ItemComment < ApplicationRecord
    validates :impression, presence: true
    validates :impression, length: { maximum: 100 }
end
