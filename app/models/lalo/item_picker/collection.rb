module Lalo::ItemPicker
  class Collection < ApplicationRecord
    has_many :line_items, dependent: :destroy

    validates :line_items, presence: true

    accepts_nested_attributes_for :line_items, reject_if: :all_blank
  end
end
