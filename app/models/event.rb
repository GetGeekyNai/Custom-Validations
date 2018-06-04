class Event < ApplicationRecord
  validates :name, presence: {message: "usiache jina blank priss!!"}
  validates :description, presence: {message: "we want to know what the event is about"}
  validates :start_date, presence: true
  validates :end_date, presence: true
  
  validates_with DateValidation

end
