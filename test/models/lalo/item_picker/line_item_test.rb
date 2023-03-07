require "test_helper"

module Lalo::ItemPicker
  class LineItemTest < ActiveSupport::TestCase
    test "is valid" do
      assert LineItem.new(collection: Collection.new).valid?
    end
  end
end
