class CreateLaloItemPickerCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :lalo_item_picker_collections do |t|
      t.text :comment

      t.timestamps
    end
  end
end
