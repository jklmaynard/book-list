class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.column :title, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
