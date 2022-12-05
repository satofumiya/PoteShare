class Hotel < ApplicationRecord
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
