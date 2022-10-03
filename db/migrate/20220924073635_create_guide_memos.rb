class CreateGuideMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :guide_memos do |t|
      t.integer :guide_detail_id
      t.string :text

      t.timestamps
    end
  end
end
