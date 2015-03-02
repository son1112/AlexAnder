class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_uid
      t.string :title
      t.text :info

      t.timestamps null: false
    end
  end
end
