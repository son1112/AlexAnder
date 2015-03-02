class AddLogIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :log_id, :string
  end
end
