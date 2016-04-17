class AddColumnsToBlogEmails < ActiveRecord::Migration
  def change
    add_column :blog_emails, :display_name, :string
    add_column :blog_emails, :blog_emails, :string
  end
end
