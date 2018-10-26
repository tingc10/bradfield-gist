class CreateFilesInGists < ActiveRecord::Migration[5.2]
  def change
    create_table :files_in_gists do |t|
      t.references :file, foreign_key: true
      t.references :gist, foreign_key: true
    end
  end
end
