class DateValidation < ActiveModel::Validator
  def validate(event)
    if event.start_date < Date.today 
      event.errors.add(:start_date, "event can't be in the past")

      if event.start_date >  event.end_date
        event.errors.add(:start_date, "tangu lini event ikaisha before ianze")
      end
    end
  end
end

