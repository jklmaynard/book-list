class CreateNotesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :notes_tables do |t|
      t.column :text, :string
    end
  end
end
