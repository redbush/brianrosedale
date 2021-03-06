class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :summary, null: false
      t.text :content, null: false
      t.string :keywords
      t.string :description

      t.timestamps
    end
  end
end
