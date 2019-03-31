class Video < ApplicationRecord
  belongs_to :user

  VALID_URL_REGEX = /\A(http(s)?:\/\/)(\S)*(\/)(\S)*(.m3u8)\z/i

  validates :name, presence: true,
            length: { minimum: 6, maximum: 50 }

  validates :url, presence: true,
            format: { with: VALID_URL_REGEX }
end
