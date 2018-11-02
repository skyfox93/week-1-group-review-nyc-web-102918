# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User
  attr_accessor :name

  def initialize(name)
    @name=name
  end
end ##end user class

class Photo
  attr_accessor :user

  def initialize(user)
  @user=user
  end

  def make_comment(comment)
    if self.user
    Comment.new(comment,self,self.user)
  else
    Comment.new(comment,self)

  end
end #end photo class


  class Comment
    attr_accessor :comment, :user :photos
    @@all=[]
    def initialize(comment,user,photo)
      @comment=comment
      @user=user
      @photo=photo
    end

    def self.all
      @@all
    end


sandwich_photo = Photo.new(user)
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
user.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
