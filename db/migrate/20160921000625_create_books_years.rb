class CreateBooksYears < ActiveRecord::Migration[5.0]
  def change
    create_table :books_years do |t|
      t.column :book_id, :integer
      t.column :year_id, :integer

      t.timestamps
    end
  end
end
