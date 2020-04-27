class Agency < ApplicationRecord
  has_many :employee_informations, dependent: :restrict_with_error
  has_many :employees, through: :employee_informations
  belongs_to :owner, class_name: 'Employee', foreign_key: 'owner_id', inverse_of: :own_agency

  validates :name, presence: true
  validates :name, :email, uniqueness: true
  validates :email, email: true
end
