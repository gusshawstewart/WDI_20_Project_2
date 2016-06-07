class Language < ActiveRecord::Base

    has_and_belongs_to_many :speakers, :class_name => "User", :join_table => "languages_users"
    has_and_belongs_to_many :learners, :class_name => "User", :join_table => "learning"

end
