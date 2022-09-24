class CreateGuideDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :guide_details do |t|
      t.string :address
      t.integer :display_order
      t.integer :guide_id
      t.boolean :checked

      t.timestamps
    end
  end
end
