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

  CLEANUP_EQUIPMENT_NEEDED = ['gloves', 'trash bag', 'rake', 'wheelbarrow', 'litter picker', 'face mask']
  VOLUMES = 0..5

  TRANSPORT = %w[backpack car truck]

  validates :trashes_on_site, presence: true, inclusion: { in: TRASHES }
  validates :volume, presence: true, inclusion: { in: VOLUMES }, numericality: { only_integer: true }

  # validates :status, presence: true, inclusion: { in: STATUS }

  def equipments
    equipments = []

    if trashes_on_site.include?('plastic')
      equipments = ['trash bag', 'litter picker']
    elsif trashes_on_site.include?('dangerous')
      equipments = ['trash bag', 'gloves', 'face mask']
    elsif trashes_on_site.include?('glass')
      equipments = ['trash bag', 'gloves']
    elsif trashes_on_site.include?('metal')
      equipments = ['trash bag', 'gloves']
    elsif trashes_on_site.include?('liquid')
      equipments = ['trash bag', 'gloves']
    elsif trashes_on_site.include?('organic')
      equipments = ['trash bag', 'litter picker']
    elsif trashes_on_site.include?('electronic')
      equipments = ['wheelbarrow']
    elsif trashes_on_site.include?('miscellaneous')
      equipments = ['trash bag', 'gloves', 'litter picker']
    end

    return equipments
  end
end
