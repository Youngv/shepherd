class Student < ActiveRecord::Base
  belongs_to :school
  attr_accessible :age, :background, :birthday, :email, :gender, :name, :school_id
  validates_presence_of :age, :background, :birthday, :email, :name, :school_id
end
