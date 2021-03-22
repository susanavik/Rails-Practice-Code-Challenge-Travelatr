class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    # validate :name, uniqueness: true
    # validate :age, numericality: {greater_than: 0}
    # validate :bio, length: {minimum: 30}
    def likes
        self.posts.each do |post|
            post.likes
        end
    end
  
    def profile_page
        puts "#{self.name}"
        puts "#{self.bio}"
        puts "#{self.age}"

        total_likes 
    end
end
