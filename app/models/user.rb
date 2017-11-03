class User < ApplicationRecord
	has_many :attended_events,  :through => :event_attendees
	has_many :event_attendees,  :foreign_key => :attendee_id
end
