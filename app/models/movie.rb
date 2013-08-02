class Movie < ActiveRecord::Base
  validates :title, :uniqueness => true, :presence => true
  validates :director_id, :presence => true

  belongs_to :director

  has_many :roles
  has_many :actors, :through => :roles

  has_many :votes
  has_many :users, :through => :votes
end








