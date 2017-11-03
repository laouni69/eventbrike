class Event < ApplicationRecord
	has_many :attendees, 		:through => :event_attendees
	has_many :event_attendees,  :foreign_key => :attended_event_id
end
