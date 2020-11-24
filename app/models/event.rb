class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  validates :name, :description, :location, :date, presence: true

  scope :past, -> { where(['date < ?', DateTime.now]) }
  scope :upcoming, -> { where(['date > ?', DateTime.now]) }
end
