class DateValidator < ActiveModel::EachValidator
  def validate_each(event, attribute, value)
    if event.start_date < Date.today 
      # event.errors.add(:start_date, "event can't be in the past")
      # the commented line also works fine
      event.errors[:start_date] << "event date cant be in the past"

      if event.start_date >  event.end_date
        # event.errors.add(:start_date, "tangu lini event ikaisha before ianze")
        event.errors[:start_date] << "an event cant end before its starts !!"
      end
    end
  end
end
