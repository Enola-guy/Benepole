class Shift < ActiveRecord::Base
	belongs_to:mission
	has_many:rapports
	has_many:personnes, through: :rapports
end
