class Movie < ActiveRecord::Base
  # belongs to director

  # The short Rails way
  belongs_to :director

  # The full Rails way
  # belongs_to :director, :class_name => "Director", :foreign_key => "director_id"

  # The hand-written way
  # def director
  #   return Director.find_by_id(self.director_id)
  # end

  # has many roles

  has_many :roles

  # def roles
  #   return Role.where(:movie_id => self.id)
  # end
end








