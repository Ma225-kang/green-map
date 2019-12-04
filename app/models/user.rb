class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :places, foreign_key: :mapmaster_id
  has_many :missions, foreign_key: :captaingreen_id

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  mount_uploader :avatar, AvatarUploader

  LEVELS = %w[rookie apprentice champion hero legend]

  validates :username, presence: true, uniqueness: true, allow_blank: false
  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :city, presence: true
  validates :zip_code, presence: true, format: { with: /\A([0-9]{5})|(2[AB]\d{3})\z/ }
  validates :country, presence: true
  validates :level, inclusion: { in: LEVELS }

  private

  def full_address
    "#{zip_code} #{city}, #{country}"
  end

  def full_address_changed?
    will_save_change_to_city? || will_save_change_to_zip_code? || will_save_change_to_country?
  end
end
