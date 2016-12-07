class Mission < ActiveRecord::Base
belongs_to:festival
has_many:shifts
end
