class Serie < ActiveRecord::Base
  attr_accessible :unit_id, :name

  belongs_to :unit
  has_many :groups

	def as_json(options={})
		super(
			:include => [:unit,:groups],
			:except => [:created_at,:updated_at]
		  # :only => [:id,:name, :unit_id]
		)
	end

end
