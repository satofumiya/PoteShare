class Hotel < ApplicationRecord
    belongs_to :user
    has_many :reservations
    mount_uploader :hotel_image, ImageUploader
end
