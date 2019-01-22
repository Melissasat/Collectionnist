class CreateOpeningTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :opening_times do |t|
      t.string  :morning_start
      t.string  :morning_end
      t.string  :evening_start
      t.string  :evening_end
      t.integer :index

      t.timestamps
    end
  end
end
