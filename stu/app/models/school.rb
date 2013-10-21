class School < ActiveRecord::Base
  has_many :students, :dependent => :destroy
  attr_accessible :address, :name
end
