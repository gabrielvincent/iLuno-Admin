class ChangeStartsAndEndsTypes < ActiveRecord::Migration

	def change
		change_column :lectures, :starts, :time
		change_column :lectures, :ends, :time
	end

end
