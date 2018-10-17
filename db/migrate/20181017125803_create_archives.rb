class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :title
      t.string :content
      t.string :attachment

      t.timestamps null: false
    end
  end
end
