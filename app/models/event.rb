class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :invites, foreign_key: :event_id
  has_many :attendees, through: :invites, source: :attendee
  #scope :past, -> { where('when <= ?', Time.current) }
  #scope :future, -> { where('when > ?', Time.current) }

  #def self.past
   # where("when <= ?", Time.current)
 # end

  #def self.future
  #  where("when > ?", Time.current)
  #end

end
