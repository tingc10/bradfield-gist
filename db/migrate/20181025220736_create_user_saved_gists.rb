class CreateUserSavedGists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_saved_gists do |t|
      t.references :user_token, foreign_key: true
      t.references :gist_token, foreign_key: true
      t.string :relationship
    end
  end
end
