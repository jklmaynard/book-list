class AddColumnToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :year_placement_id, :integer
  end
end
