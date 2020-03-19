class Blogger < ApplicationRecord
    # Good associations throughout all your models, nice work.
    has_many :posts
    has_many :destinations, through: :posts
    # You might also want to validate presence here. Otherwise you'll be allowed to save (exactly one, b/c uniqueness) nameless blogger
    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0 }
    validates :bio, length: {minimum: 30}

    # Nice use of map and sum here. Good tools for the job.
    def total_likes
        likes = self.posts.map { |p| p.likes }
        likes.sum
    end 

end
