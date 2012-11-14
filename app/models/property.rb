class Property < ActiveRecord::Base
  attr_accessible :contact, :description, :isfound, :keyword, :name, :studentID, :time
  validates :name, :contact, :description, :keyword,:studentID,:time, :presence => true
  validates :studentID,:contact,:uniqueness => true
  validates :name,:keyword, :length => { :in => 6..20}
  validates :studentID, :length => {:is => 8}
end
