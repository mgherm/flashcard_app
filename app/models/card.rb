class Card < ActiveRecord::Base
  belongs_to :deck
  attr_accessible :front, :back
end
