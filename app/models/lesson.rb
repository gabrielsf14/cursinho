class Lesson < ApplicationRecord
  has_many :students
  has_many :call_lists
end
