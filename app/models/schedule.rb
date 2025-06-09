class Schedule < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :start_date
    validates :end_date
  end
  validates :title, length: { maximum: 20 }
  validates :memo, length: { maximum: 500 }

  validate :end_date_check
  def end_date_check
    if start_date.present? && start_date >= end_date
        errors.add(:end_date, "は開始日以降の日付を選択してください")
    end
  end
end
