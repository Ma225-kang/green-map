class Place < ApplicationRecord
  belongs_to :mapmaster, class_name: "User"
  has_many :missions
  has_many :congratulations

  scope :not_clean_yet, -> { where.not(volume: 0) }

  reverse_geocoded_by :latitude, :longitude do |place, results|
    geo = results.first
    place.address = "#{geo.city}, #{geo.postal_code}" if geo
  end
  after_validation :reverse_geocode
  # if: :should_geocode_by_address?

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :mapmaster_photo, PhotoUploader

  STATUS = %w[new on-going clean]
  TRASHES = %w[plastic dangerous glass metal liquid organic electronic miscellaneous]

  CLEANUP_EQUIPMENT_NEEDED = ['gloves', 'trash bag', 'rake', 'wheelbarrow', 'litter picker', 'face mask']
  VOLUMES = 0..5

  TRANSPORT = %w[backpack car truck]

  validates :trashes_on_site, presence: true
  validates :volume, presence: true, inclusion: { in: VOLUMES }, numericality: { only_integer: true }

  # validates :status, presence: true, inclusion: { in: STATUS }

  def equipments
    equipments = []

    trashes_on_site.each do |trash|
      if trash.include?('plastic')
        equipments << 'trash bag'
        equipments << 'picker'
      elsif trash.include?('dangerous')
        equipments << 'trash bag'
        equipments << 'gloves'
        equipments << 'face mask'
      elsif trash.include?('glass')
        equipments << 'trash bag'
        equipments << 'gloves'
      elsif trash.include?('metal')
        equipments << 'trash bag'
        equipments << 'gloves'
      elsif trash.include?('liquid')
        equipments << 'trash bag'
        equipments << 'gloves'
      elsif trash.include?('organic')
        equipments << 'trash bag'
        equipments << 'picker'
      elsif trash.include?('electronic')
        equipments << 'wheelbarrow'
      elsif trash.include?('miscellaneous')
        equipments << 'trash bag'
        equipments << 'gloves'
        equipments << 'picker'
      end
    end

    return equipments.uniq
  end
end
