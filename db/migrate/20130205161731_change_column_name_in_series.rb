class ChangeColumnNameInSeries < ActiveRecord::Migration
  def change
  	rename_column :series, :id_unit, :unit_id
  end
end
