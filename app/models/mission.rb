class Mission < ApplicationRecord
  belongs_to :captaingreen, class_name: "User"
  belongs_to :place

  TIME = %w[morning afternoon all-day]
  STATUS = %w[planned cancelled completed]

  validates :date, presence: true, on: :create
  validates :time_slot, presence: true, inclusion: { in: TIME }, on: :create
  validates :perceived_effort, presence: true, inclusion: { in: 1..5 }, numericality: { only_integer: true }, on: :update


  # validates :participation_proof, presence: true, on: :update
  # validates :mapmaster_photo, presence: true, on: :update

  #validates :equipment, inclusion: { in: EQUIPMENT }

  mount_uploader :mapmaster_photo, PhotoUploader
  mount_uploader :participation_proof, PhotoUploader
end
