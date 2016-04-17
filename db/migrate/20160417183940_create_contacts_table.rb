class CreateContactsTable < ActiveRecord::Migration
  def change
    create_table :contacts_tables do |t|
      t.string :display_name
      t.string :email
      t.string :phone
      t.text :message
    end
  end
end
