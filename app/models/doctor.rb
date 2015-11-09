class Doctor < ActiveRecord::Base
    has_many :Comment
    has_many :Location
end
