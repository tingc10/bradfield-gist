class CreateGists < ActiveRecord::Migration[5.2]
  def change
    create_table :gists do |t|
      t.boolean :is_private
      t.string :description
    end
  end
end
