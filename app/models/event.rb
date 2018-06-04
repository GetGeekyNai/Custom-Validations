class Event < ApplicationRecord
  validates :name, presence: {message: "usiache jina blank priss!!"}
  validates :description, presence: {message: "we want to know what the event is about"}
end
