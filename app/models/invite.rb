class Invite < ApplicationRecord
  belongs_to :event, class_name: "Event"
  belongs_to :attendee, class_name: "User"
  #belongs_to :event, class_name: "Event"
end
