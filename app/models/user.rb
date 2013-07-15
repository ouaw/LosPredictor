class User < ActiveRecord::Base

	 validates :first_name, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}

	 validates :last_name, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254}

	 validates :email, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254},
                          :uniqueness => true

	 validates :telephone, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254},
                          :uniqueness => true,
  			                  :format => {:with =>/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/}

	 validates :username, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254},
                          :uniqueness => true

	 validates :password, :presence => true, 
                          :length => {:minimum => 1, :maximum => 254},
                          :uniqueness => true

end
