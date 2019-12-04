class Mission < ApplicationRecord
  belongs_to :captaingreen, class_name: "User"
  belongs_to :place

  TIME = %w[morning afternoon all-day]
  STATUS = %w[planned on-going cancelled completed]
  EQUIPMENT = %w[gloves bag rake wheelbarrow]

  validates :date, presence: true
  validates :time_slot, presence: true, inclusion: { in: TIME }
  validates :mapmaster_photo, presence: true
  validates :participation_level, inclusion: { in: 0..5 }, numericality: { only_integer: true }

  validates :status, inclusion: { in: STATUS }
  validates :equipment, inclusion: { in: EQUIPMENT }

  mount_uploader :mapmaster_photo, PhotoUploader
end
