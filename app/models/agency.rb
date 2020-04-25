class Agency < ApplicationRecord
  has_many :employee_informations, dependent: :restrict_with_error
  has_many :employees, through: :employee_informations

  validates :name, presence: true
  validates :name, :email, uniqueness: true
end
