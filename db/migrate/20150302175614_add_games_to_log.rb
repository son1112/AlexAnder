class AddGamesToLog < ActiveRecord::Migration
  def change
    add_column :logs, :games, :text
  end
end
