class Teacher < ActiveRecord::Base
  attr_accessible :name

	# def as_json(options={})
	# 	super(
	# 	  :only => [:id,:name]
	# 	)
	# end

	has_many :lectures
end
