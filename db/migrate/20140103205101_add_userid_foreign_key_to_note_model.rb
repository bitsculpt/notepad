class AddUseridForeignKeyToNoteModel < ActiveRecord::Migration
  def up
    add_column :notes, :first_name, :string
    add_column :notes, :last_name, :string
  end
  def down
  remove_column :notes, :first_name
  remove_column :notes, :last_name
  end

end
