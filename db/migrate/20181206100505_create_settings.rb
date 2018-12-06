class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :site_name
      t.integer :post_per_page
      t.boolean :prevent_maintenance
      t.boolean :tag_visibility

      t.timestamps
    end
  end
end
