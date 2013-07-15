class Patient < ActiveRecord::Base

		has_many :hospitalizations

	 	validates :first_name, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}

	 	validates :last_name, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}

	 	validates :date_of_birth, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}
    
#    validate :date_of_birth_is_valid_datetime?                  
#		
#		private
#
#  	def date_of_birth_is_valid_datetime?
#    	if !date_of_birth.is_a?(Date)
#      	errors.add(:date_of_birth, 'must be a valid date') 
#    	end
#  	end

	 	validates :current_address, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}

	 	validates :current_telephone, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}

	 	validates :personal_health_number, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254},
                          :uniqueness => true

end
