class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 mount_uploader :graffiti_image, GraffitiImageUploader

  has_and_belongs_to_many :languages, :join_table => "languages_users"
  has_and_belongs_to_many :learning, :class_name => "Language", :join_table => "learning"
        # has_and_belongs_to_many :meeting_requests, :class_name => "User", :join_table => "meeting_requests"
  has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"
   has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id"
end
