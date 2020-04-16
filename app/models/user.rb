class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  has_many :bookings, dependent: :restrict_with_error

  enum role: %i[super_admin agency_admin agency_employee individual_employee consumer]

  validates :first_name, :last_name, :role, presence: true
  validates :phone_number, :address, presence: true, if: -> { agency_admin? || individual_employee? }
end
