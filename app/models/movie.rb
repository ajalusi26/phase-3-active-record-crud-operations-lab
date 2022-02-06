class Movie < ActiveRecord::Base
    #CREATE
    def self.create_with_title(name)
        Movie.create(title: name)
    end
    #READ
    def self.first_movie
        Movie.first
    end

    def self.last_movie
       Movie.last 
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id) 
        Movie.find(id)
    end

    def self.find_movie_with_attributes(x)  
        Movie.find_by(x)
    end

    def self.find_movies_after_2002 
        Movie.where("release_date  > 2002")
    end

    #UPDATE

    def update_with_attributes(x) 
        self.update(x)
        self.save
    end

    def self.update_all_titles(x)
        Movie.update(title: x)
    end

    #DELETE

    def self.delete_by_id(x)
        Movie.destroy(x)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end