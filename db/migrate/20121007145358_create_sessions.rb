class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :course_id
      t.time :start
      t.time :finish
      t.string :instructor
      t.string :session_type
      t.integer :weekday

      t.timestamps
    end
  end
end
