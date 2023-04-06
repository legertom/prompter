class CreatePrompts < ActiveRecord::Migration[7.0]
  def change
    create_table :prompts do |t|
      t.string :title
      t.text :prompt_text
      t.text :description

      t.timestamps
    end
  end
end
