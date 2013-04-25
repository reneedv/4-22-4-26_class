class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :post
      t.string :title
      t.integer :author_id

      t.timestamps
    end
  end
end
