class User < ActiveRecord::Base
	def self.trier(tri)
		if tri == 'Tous'
			all
		elsif tri == 'Alphabetique'
			alphabetical_order
		else tri == 'Admin'
			is_admin
		end	
	end
	def self.is_admin
		where(admin: true)
	end

	def self.alphabetical_order
		order( :name)
	end
end