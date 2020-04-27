class ApplicationRecord < ActiveRecord::Base
  include ActiveModel::Validations

  self.abstract_class = true

  acts_as_paranoid
end
