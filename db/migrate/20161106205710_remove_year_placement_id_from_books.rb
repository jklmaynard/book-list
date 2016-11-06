class RemoveYearPlacementIdFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :year_placement_id
  end
end
