class Hotel < ApplicationRecord
    validates :name, presence: true
    validates :hotel_introduction, presence: true
    validates :address, presence: true
    validates :hotel_image, presence: true
    validates :price, presence: true ,numericality: true

    belongs_to :user
    has_many :reservations
    mount_uploader :hotel_image, ImageUploader

    def self.looks(word, column)
        if word != ""
            @Hotel = Hotel.where("#{column} LIKE?", "%#{word}%")
        else
          @Hotel = User.all
        end
    end

end
