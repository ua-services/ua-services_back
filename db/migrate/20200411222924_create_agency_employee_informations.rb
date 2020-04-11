class CreateAgencyEmployeeInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_employee_informations do |t|
      t.integer :agency_employee_id, foreign_key: true, null: false
      t.integer :agency_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
