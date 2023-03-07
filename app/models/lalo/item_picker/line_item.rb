module Lalo::ItemPicker
  class LineItem < ApplicationRecord
    belongs_to :collection
  end
end
