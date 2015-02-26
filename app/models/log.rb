class Log < ActiveRecord::Base

  belongs_to :dev
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  searchkick autocomplete: ['title']
end

