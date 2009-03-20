class Story < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  has_many :souls
end
