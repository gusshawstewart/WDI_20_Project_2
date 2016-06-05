class Language < ActiveRecord::Base

    belongs_to :user
    has_and_belongs_to_many :interest_from, :class_name => "User"
end
