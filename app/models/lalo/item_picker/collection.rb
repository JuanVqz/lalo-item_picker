module Lalo::ItemPicker
  class Collection < ApplicationRecord
    has_many :line_items, dependent: :destroy

    validates :line_items, presence: true
  end
end
