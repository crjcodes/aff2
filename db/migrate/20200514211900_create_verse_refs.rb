class CreateVerseRefs < ActiveRecord::Migration[6.0]
  def change
    create_table :verse_refs do |t|
      t.string :book
      t.integer :start
      t.integer :end
      t.belongs_to :keyword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
