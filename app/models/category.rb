class Category < ActiveRecord::Base
  has_many :tools
  
  validates :tool_type, :length => { :minimum => 3 }
end
