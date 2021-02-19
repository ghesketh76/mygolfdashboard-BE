class Golfcourse < ApplicationRecord
    has_many :teeboxes
    has_many :newrounds
end
