class RemoveGamesColumnFromLog < ActiveRecord::Migration
  def change
    remove_column :logs, :games
  end
end
