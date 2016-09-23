class AddSlugToYears < ActiveRecord::Migration[5.0]
  def change
    add_column :years, :slug, :string
    add_index :years, :slug
  end
end
