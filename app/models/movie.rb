class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year) 
    end
    def self.create_with_title(movie_title)
        Movie.create(title: movie_title) 
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        self.last
    end
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id (identity)
        Movie.find_by(id: identity)
    end
    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end
   def self.find_movies_after_2002
        Movie.where("release_date >2002")
   end
   def update_with_attributes(attribute)
        self.update(attribute)
   end
   def self.update_all_titles(newtitle)
        Movie.update(title: newtitle)
   end
   def self.delete_by_id(identity)
        Movie.destroy(identity)
   end
   def self.delete_all_movies
    Movie.destroy_all
   end
end