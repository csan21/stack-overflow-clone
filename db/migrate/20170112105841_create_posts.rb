class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string    :title
      t.string    :post_body
      t.integer   :view_count, default: 0
      t.integer   :category_id
      t.integer   :author_id

      t.timestamps null: false
    end
  end
end
