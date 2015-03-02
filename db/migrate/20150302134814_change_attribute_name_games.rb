class ChangeAttributeNameGames < ActiveRecord::Migration
  def change
    rename_column :games, :game_uid, :gamefile_uid
  end
end
