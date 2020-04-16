class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.integer :employee_id, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :bookings, :deleted_at
  end
end
