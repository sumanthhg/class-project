class Course < ActiveRecord::Base
	validates_presence_of :name, message: "You should give a name"
	validates_length_of :name, within: 2..10
end
