class Patient < ApplicationRecord
    has_many :encounter, dependent: :destroy
end
