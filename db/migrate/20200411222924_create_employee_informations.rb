class CreateEmployeeInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_informations do |t|
      t.integer :employee_id, foreign_key: true, null: false
      t.integer :agency_id, foreign_key: true

      t.timestamps
    end
  end
end
