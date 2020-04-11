class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  enum role: %i[super_admin agency_admin agency_employee indvidual_employee consumer]

  after_initialize do
    self.role ||= :consumer if new_record?
  end
end
