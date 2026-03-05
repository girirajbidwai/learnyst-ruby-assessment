module Taggable
  def add_tag(tag)
    @tags.push(tag)
  end

  def tags
    @tags
  end
end

class Article
  include Taggable

  attr_accessor :title

  def initialize(title)
    @title = title
    @tags = Array.new
  end
end

a1 = Article.new("Ruby Basics")
a2 = Article.new("Rails Guide")

a1.add_tag("ruby")
a1.add_tag("backend")

a2.add_tag("rails")

puts "Article 1 tags: #{a1.tags}"
puts "Article 2 tags: #{a2.tags}"