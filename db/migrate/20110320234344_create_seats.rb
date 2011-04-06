class CreateSeats < ActiveRecord::Migration
  def self.up
    create_table :seats do |t|
      t.integer :seat_number
      t.boolean  :taken
      t.string :assigned_student

      t.timestamps
    end
  end

  def self.down
    drop_table :seats
  end
end