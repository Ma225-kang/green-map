class Mission < ApplicationRecord
  belongs_to :captaingreen, class_name: "User"
  belongs_to :place

  TIME = %w[morning afternoon all-day]

  validates :date, presence: true
  validates :time_slot, presence: true, inclusion: { in: TIME }
  validates :mapmaster_photo, presence: true
  validates :participation_level, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  validates :status, inclusion: { in: %w(planned on-going cancelled completed) }

  mount_uploader :mapmaster_photo, PhotoUploader
end
