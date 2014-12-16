class Task < ActiveRecord::Base

  validates :description, presence: true

  def due_date_cannot_be_in_the_past
    if due_date < Date.today
      errors.add(:due_date, "can't be in the past")
    end
  end

  validate :due_date_cannot_be_in_the_past, on: :create

end
