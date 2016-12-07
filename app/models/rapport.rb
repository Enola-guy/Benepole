class Rapport < ActiveRecord::Base
	belongs_to:shift
	belongs_to:personne

end
