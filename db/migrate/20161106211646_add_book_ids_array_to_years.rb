class AddBookIdsArrayToYears < ActiveRecord::Migration[5.0]
  def change
    add_column :years, :book_placement, :text, array: true, default: []
  end
end
