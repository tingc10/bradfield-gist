class CreateFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :files do |t|
      t.string :name
      t.string :indent_mode
      t.integer :indent_size
      t.boolean :line_wrap
      t.string :token
      t.references :gist_token, foreign_key: true
      t.references :current_revision_token, foreign_key: true
      t.timestamps
    end
  end
end
