class CreateEmployeeServices < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_services do |t|
      t.integer :employee_id, foreign_key: true
      t.references :service, foreign_key: true
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :employee_services, :deleted_at
  end
end
