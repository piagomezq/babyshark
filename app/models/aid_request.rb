class AidRequest < ActiveRecord::Base
    belongs_to :patient
    belongs_to :specialty
end