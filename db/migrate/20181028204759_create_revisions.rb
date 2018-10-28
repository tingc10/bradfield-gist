class CreateRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :revisions do |t|
      t.string :token
      t.string :content
      t.references :file_token, foreign_key: true
      t.timestamps
    end
  end
end
