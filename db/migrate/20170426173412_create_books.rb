class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :cover
      t.string :genre
      t.integer :page_count

      t.timestamps null: false
    end
  end
end
