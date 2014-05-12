class Event < ActiveRecord::Base
	default_scope :order => 'date'

	
  	validates :title, presence: true, uniqueness: true
  	validates :logo_id, presence: true
  	validates :short_description, presence: true
  	validates :date, presence: true
  	validates :starttime, presence: true
  	validates :endtime, presence: true
  	validates :participants, presence: true
 
  	# It returns the articles whose titles contain one or more words that form the query
  	def self.search(query)
    	# where(:title, query) -> This would return an exact match of the query
    	where("title like ?", "%#{query}%")
  	end

end
