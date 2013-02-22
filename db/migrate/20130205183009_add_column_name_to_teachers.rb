class AddColumnNameToTeachers < ActiveRecord::Migration
  def up
  	add_column :teachers, :name, :string
  end
end
