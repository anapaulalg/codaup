class Event < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :location, presence: true, length: { maximum: 100 }
  validates :price, presence: true
  validates :capacity, presence: true
  validates :guests, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user
end
