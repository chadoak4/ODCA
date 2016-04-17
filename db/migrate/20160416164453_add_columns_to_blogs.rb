class AddColumnsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :entry, :text
    add_column :blogs, :blog_image_id, :string
    add_column :blogs, :date_written,  :datetime
    add_reference :blogs, :user, index: true
    add_foreign_key :blogs, :users

  end
end
