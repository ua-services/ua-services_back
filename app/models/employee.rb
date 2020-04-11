class Employee < User
  belongs_to :agency, foreign_key: :id
end
