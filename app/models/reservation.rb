class Reservation < ApplicationRecord
    validate :date_before_start
    validate :date_before_finish
    validates :NumberOfGuests, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}

    def date_before_start
        if start.nil? || start < Date.today
        errors.add(:start, 'は今日以降のものを選択してください')
        end
    end

    def date_before_finish
        if end_day.nil? || end_day < start
        errors.add(:end_day, 'は開始日以降のものを選択してください')
        end
    end

    belongs_to :user
    belongs_to :hotel
end
