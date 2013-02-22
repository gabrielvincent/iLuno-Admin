class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.integer :book_id
      t.integer :group_id
      t.integer :teacher_id
      t.integer :subject_id
      t.timestamp :starts
      t.timestamp :ends

      t.timestamps
    end
  end
end
