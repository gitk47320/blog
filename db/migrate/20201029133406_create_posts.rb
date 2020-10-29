class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :post
      t.string :tag
      t.reference :user, foreign_key: true
      t.timestamps
    end
  end
end
