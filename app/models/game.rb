class Game < ActiveRecord::Base
  dragonfly_accessor :gamefile
  belongs_to :log
#  validates_presence_of :log
  
  validates :title, presence: true, length: {minimum: 2, maximum: 20}
  validates :info, presence: true, length: {minimum: 2, maximum: 200}
end
