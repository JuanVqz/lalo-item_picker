require "test_helper"

module Lalo::ItemPicker
  class CollectionTest < ActiveSupport::TestCase
    test "is not valid" do
      assert_not Collection.new.valid?
    end

    test "requires at least one line_item" do
      assert Collection.new(line_items: [LineItem.new]).valid?
    end
  end
end
