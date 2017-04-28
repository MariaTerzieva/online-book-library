class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :genre
      t.integer :min_pages
      t.integer :max_pages

      t.timestamps null: false
    end
  end
end
