class AddDevToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :dev_id, :integer
    add_index :logs, :dev_id
  end
end
