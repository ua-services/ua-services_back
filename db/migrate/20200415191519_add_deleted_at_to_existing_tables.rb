class AddDeletedAtToExistingTables < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :deleted_at, :datetime
    add_column :agencies, :deleted_at, :datetime
    add_column :employees, :deleted_at, :datetime
    add_column :employee_informations, :deleted_at, :datetime
    add_index :users, :deleted_at
    add_index :agencies, :deleted_at
    add_index :employees, :deleted_at
    add_index :employee_informations, :deleted_at
  end
end
