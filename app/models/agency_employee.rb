class AgencyEmployee < Employee
  belongs_to :agency, foreign_key: :id

  delegate :id, to: :agency, prefix: true
end
