class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :customer_name
      t.string :sales_name

      t.timestamps
    end
  end
end
