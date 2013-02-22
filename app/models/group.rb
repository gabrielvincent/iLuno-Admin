class Group < ActiveRecord::Base
  attr_accessible :name, :serie_id

  belongs_to :serie
  belongs_to :unit
  belongs_to :lectures

  def unit
  	serie.unit
  end

  	def as_json(options={})
		super(
			:include => [:serie,:unit],
			:except => [:created_at,:updated_at]
		  # :only => [:id,:name, :unit_id]
		)
	end

end
