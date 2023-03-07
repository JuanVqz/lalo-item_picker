class CreateLaloItemPickerLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :lalo_item_picker_line_items do |t|
      t.decimal :quantity
      t.integer :collection_id, index: true

      t.timestamps
    end
  end
end
