class Event < ActiveRecord::Base
	default_scope :order => 'date'
end
