class Comment < ActiveRecord::Base
  attr_accessible :text, :topic_id

  validates_presence_of :topic_id
  validates_presence_of :text

  belongs_to :topic
end
