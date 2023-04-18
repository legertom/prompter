class CreateResourceLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :resource_links do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :image_url
      t.references :resource_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
