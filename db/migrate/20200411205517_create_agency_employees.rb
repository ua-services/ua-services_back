class CreateAgencyEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_employees do |t|
      t.integer :agency_id, foreign_key: true

      t.timestamps
    end
  end
end
