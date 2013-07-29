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

  has_many :actors, :through => :roles

  # def actors
  #   this_movies_roles = self.roles
  #   this_movies_actors = []

  #   this_movies_roles.each do |role|
  #     this_movies_actors << role.actor
  #   end

  #   return this_movies_actors
  # end
end








