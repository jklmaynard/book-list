class AddNotesIdsToBooksAndYearsTables < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :note_id, :integer
    add_column :years, :note_id, :integer
  end
end
