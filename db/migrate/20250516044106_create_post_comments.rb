class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :post_image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
