require "test_helper"

class CollectionFlowTest < ActionDispatch::IntegrationTest
  test "renders the root path" do
    get lalo_item_picker_path

    assert_response :success
  end

  test "shows collections" do
    lalo_item_picker_collections(:one, :two)

    get lalo_item_picker_path

    assert_select "li", "MyComment1"
    assert_select "li", "MyComment2"
  end
end
