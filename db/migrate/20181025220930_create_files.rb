class CreateFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :files do |t|
      t.string :name
      t.string :content
      t.string :indent_mode
      t.integer :indent_size
      t.boolean :line_wrap
    end
  end
end
