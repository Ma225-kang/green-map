class Place < ApplicationRecord
  belongs_to :mapmaster, class_name: "User"
  has_many :missions
  has_many :congratulations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :mapmaster_photo, PhotoUploader

  STATUS = %w[new on-going clean]
  TRASHES = %w[plastic dangerous glass metal liquid organic electronic miscellaneous]
  # TRASHES = %w[bottle can fish plastic-bottle trash fridge dangerous]

  CLEANUP_EQUIPMENT_NEEDED = %w[gloves bag rake wheelbarrow]
  VOLUMES = 0..5

  TRANSPORT = %w[backpack car truck]

  validates :trashes_on_site, presence: true
  validates :volume, presence: true, inclusion: { in: VOLUMES }, numericality: { only_integer: true }

  # validates :status, presence: true, inclusion: { in: STATUS }

  # def equipments
  #   equipments = []

  #   if trashes_on_site.include?('organic')
  #     equipments << 'bag'
  #   elsif trashes_on_site.include?('dangerous')
  #     equipments << 'gloves'
  #   # ...
  #   end

  #   return equipments
  # end
end
