class AddPostViews < ActiveRecord::Migration
  def change
    add_column :posts, :post_views, :integer, default: 0
  end
end
