class User < ApplicationRecord
	validates :username, presence: true, 
						uniqueness: { case_sentitive: false }, 
						length: { minimum: 3, maximum: 25 },

	VALID_EMAIL_REGEX = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

	validates :email, presence: true, length: { maximum: 105 },
						 uniqueness: { case_sentitive: false },
						 format: { with: VALID_EMAIL_REGEX }

end
