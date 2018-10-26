class CreateUserSavedGists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_saved_gists do |t|
      t.references :user, foreign_key: true
      t.references :gist, foreign_key: true
      t.string :relationship
    end
  end
end
