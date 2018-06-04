class Event < ApplicationRecord
  validates :name, presence: {message: "usiache jina blank priss!!"}
  validates :description, presence: {message: "we want to know what the event is about"}
  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :start_date_before_end_date
  validate :start_date_cant_be_in_past

  def start_date_cant_be_in_past
    if start_date < Date.today
      errors.add(:start_date, "event can be only in future")
    end
  end

  def start_date_before_end_date
    if start_date >  end_date
      errors.add(:start_date, "tangu lini event ikaisha before ianze")
    end
  end
end
