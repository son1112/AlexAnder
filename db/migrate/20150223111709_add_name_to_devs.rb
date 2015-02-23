class AddNameToDevs < ActiveRecord::Migration
  def change
    add_column :devs, :name, :string
  end
end
