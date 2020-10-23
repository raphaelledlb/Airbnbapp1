class Reservation < ApplicationRecord
    belongs_to :guest, class_name: user
    belongs_to :admin, class_name: user

    def duration
    duration = start_date.to_f - end_date.to_f
    return duration
    end


    private 

    def start_must_be_before_end_date
        errors.add(:start_date, "must be before end date") unless
        start_date < end_date
    end



end

