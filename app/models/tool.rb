class Tool < ActiveRecord::Base
  belongs_to :category
  
  validates :category_id, :length => { :minimum => 1 }
  validates :comment, :length => { :maximum => 150 }
  validates :make, :length => { :minimum => 3 }
end
