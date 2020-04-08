class ApplyActivity < ApplicationRecord
    has_one :candidate
    has_one :employer
end
