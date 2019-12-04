class Place < ApplicationRecord
  belongs_to :mapmaster, class_name: "User"
  has_many :missions

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :display_photo, PhotoUploader
  mount_uploader :mapmaster_photo, PhotoUploader

  STATUS = %w[new on-going clean]
  TRASHS = %w[plastic dangerous glass metal liquid organic electronic miscellaneous]

  validates :type_of_trash, presence: true, inclusion: { in: TRASHS }
  validates :volume, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  validates :status, presence: true, inclusion: { in: STATUS }
end
