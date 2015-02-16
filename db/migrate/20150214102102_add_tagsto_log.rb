class AddTagstoLog < ActiveRecord::Migration
  def change
    add_column :logs, :tags, :string, array: true, default: '{}'
  end
end
