class Lecture < ActiveRecord::Base
  attr_accessible :book_id, :ends, :group_id, :starts, :subject_id, :teacher_id

  belongs_to :book
  belongs_to :group
  belongs_to :subject
  belongs_to :teacher
  belongs_to :serie
  belongs_to :unit
end
