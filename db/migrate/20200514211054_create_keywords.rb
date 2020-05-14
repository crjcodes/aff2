class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.string :keyword, limit: 25

      t.timestamps
    end
    add_index :keywords, :keyword, unique: true
  end
end
