class AddUsernameToDevs < ActiveRecord::Migration
  def change
    add_column :devs, :username, :string
  end
end
