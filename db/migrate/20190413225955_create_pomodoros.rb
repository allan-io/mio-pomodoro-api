class CreatePomodoros < ActiveRecord::Migration[5.2]
  def change
    create_table :pomodoros do |t|
      t.integer :work_time
      t.integer :break_time
      t.decimal :work_percent_complete
      t.decimal :break_percent_complete
      t.string :active_theme

      t.timestamps
    end
  end
end
