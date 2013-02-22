class Book < ActiveRecord::Base
  attr_accessible :name, :subject_id

  belongs_to :subject
  belongs_to :lectures
end
