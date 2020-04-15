class Agency < ApplicationRecord
  has_many :employee_informations, dependent: :restrict_with_error
  has_many :employees, through: :employee_informations
  has_one :schedule, as: :schedulable

  validates :name, presence: true
end
