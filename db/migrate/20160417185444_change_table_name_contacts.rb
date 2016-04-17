class ChangeTableNameContacts < ActiveRecord::Migration
  def change
    rename_table :contacts_tables, :contacts
  end
end
