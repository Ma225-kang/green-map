class Place < ApplicationRecord
  belongs_to :mapmaster, class_name: "User"
  has_many :missions

  STATUS = %w[new on-going clean]
  TRASHS = %w[plastic dangerous glass metal liquid organic electronic miscellaneous]

  validates :type_of_trash, presence: true, inclusion: { in: TRASHS }
  validates :volume, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  validates :status, presence: true, inclusion: { in: STATUS }
end
