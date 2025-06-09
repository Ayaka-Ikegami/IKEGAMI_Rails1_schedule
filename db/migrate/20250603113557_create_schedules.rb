class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start_date #dateは日付のみ
      t.date :end_date
      t.boolean :all_day #boolean...true/false判定
      t.string :memo

      t.timestamps
    end
  end
end
