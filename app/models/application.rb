class Application < ApplicationRecord
  belongs_to :course
  belongs_to :user
 
  validates :applicant_name, presence: true, length: { minimum: 3, maximum: 30 }
  VALID_EMAIL_REGEX=/\A[^@\s]+@[^@\s]+\.[^@\s]+\z/
  validates :email, presence: true,format: {with: VALID_EMAIL_REGEX}
  validates :phone, presence: true
  validates :age, presence: true
  validates :course_id, presence: true
end
