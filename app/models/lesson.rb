class Lesson < ApplicationRecord
  has_many :tasks
  has_many :resources
  belongs_to :course_module
end
