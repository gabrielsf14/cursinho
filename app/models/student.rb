class Student < ApplicationRecord
  belongs_to :lesson

  def is_present(presences)
    return "Ausente" unless presences.find_by(student_id: id).present?
    "Presente"
  end
end
