class Personne < ActiveRecord::Base
	has_many:rapports
	has_many:shifts, through: :rapports
end
