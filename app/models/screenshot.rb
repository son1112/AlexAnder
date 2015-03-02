class Screenshot < ActiveRecord::Base
  dragonfly_accessor :image do
    after_assign { |img| img.encode!('jpg', '-quality 80') }
  end

  validates :title, presence: true, length: {minimum: 2, maximum: 20}
  validates :image, presence: true

  validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false, message: "should be either .jpeg, .jpg, .png, .bmp", if: :image_changed?
                                           
end
