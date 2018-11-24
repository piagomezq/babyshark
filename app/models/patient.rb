class Patient < ActiveRecord::Base
    has_many :aid_requests
end