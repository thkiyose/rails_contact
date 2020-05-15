class RenameContentColumnToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :contact, :content
  end
end
