class Author
  #class variables and methods
  @@post_count = 0

  def self.post_count
    @@post_count
  end

  #instance variables and methods



  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []

  end

  def posts
    @posts

  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
  end




end
