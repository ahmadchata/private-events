class User < ApplicationRecord
  has_many :events
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event

  validates :name, presence: true, uniqueness: { case_sensitive: false },
                   length: { minimum: 4, maximum: 25 }
end
