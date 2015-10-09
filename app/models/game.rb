class Game < ActiveRecord::Base
  dragonfly_accessor :gamefile
  belongs_to :log
#  validates_presence_of :log
  
#  validates :title, length: {minimum: 2, maximum: 20}
#  validates :info, length: {minimum: 2, maximum: 200}
end
