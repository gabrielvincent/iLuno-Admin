class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name
      t.integer :id_unit

      t.timestamps
    end
  end
end
