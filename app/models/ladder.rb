class Ladder < User
has_many :events, dependent: :destroy
end
