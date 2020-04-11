class Agency < ApplicationRecord
  has_many :employees, foreign_key: :id, dependent: :destroy

  validates :name, :address, :phone_number, :service_industry, presence: true
end
