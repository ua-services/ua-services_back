class Agency < ApplicationRecord
  has_many :employee_informations, dependent: :restrict_with_error
  has_many :employees, through: :employee_informations
  belongs_to :owner, class_name: 'Employee', foreign_key: 'owner_id', optional: true, inverse_of: :own_agency

  after_create_commit :set_agency_id_on_employee_informations

  validates :name, presence: true
  # Todo validate email with regex
  validates :name, :email, uniqueness: true

  private

  def set_agency_id_on_employee_informations
    owner.agency = self
  end
end
