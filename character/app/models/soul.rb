class Soul < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :user
  
  def self.find_all_souls
    find(:all, :order => "name")
  end
  
end
