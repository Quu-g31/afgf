class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.text    :text, null: false
      t.integer :platform_id, null: false
      t.integer :purpose, null: false
      t.timestamps
    end
  end
end
