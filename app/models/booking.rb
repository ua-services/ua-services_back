class Booking < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :user
  belongs_to :employee
  belongs_to :service

  validates_with SamePersonValidator
end
