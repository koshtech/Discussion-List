class Topic < ActiveRecord::Base
  attr_accessible :text, :title

  validates_presence_of :title
  validates_uniqueness_of :title

  has_many :comments

  define_index do
    indexes title
    set_property :delta => true
  end

end
