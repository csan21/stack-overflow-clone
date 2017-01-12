class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer   :post_id
      t.integer   :commenter_id
      t.string    :comment_body

      t.timestamps null: false
    end
  end
end
