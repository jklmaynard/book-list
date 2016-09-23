class ChangeBooksTableValues < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :author
    add_column :books, :author_first_name, :string
    add_column :books, :author_last_name, :string
  end
end
