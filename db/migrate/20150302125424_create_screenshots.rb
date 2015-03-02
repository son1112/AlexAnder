class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.string :image_uid
      t.string :title

      t.timestamps null: false
    end
  end
end
