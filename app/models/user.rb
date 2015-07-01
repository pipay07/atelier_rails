class User < ActiveRecord::Base
	def self.trier(tri)
		case tri
		when 'Alphabetique'
			alphabetical_order
		when 'Admin'
			is_admin
		else
			all
		end	
	end
	def self.is_admin
		where(admin: true)
	end

	def self.alphabetical_order
		order( :name)
	end
end