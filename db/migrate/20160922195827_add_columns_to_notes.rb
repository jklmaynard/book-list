class AddColumnsToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :book_id, :integer
    add_column :notes, :year_id, :integer
  end
end
