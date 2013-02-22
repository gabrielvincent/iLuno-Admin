class CreateTableBooks < ActiveRecord::Migration
def change
    create_table :books do |t|
      t.string :name
      t.integer :subject_id

      t.timestamps
    end
  end
end
