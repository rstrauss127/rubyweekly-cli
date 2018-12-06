class InvalidType < StandardError; end
class Newsletter
  attr_accessor :issue_number, :issue_date
  attr_reader :articles

  def initialize
    @articles = []
  end

  def articles
    @articles.dup.freeze
  end

  def add_articles(article) #enforce type
    if !article.is_a?(Article)
      raise InvalidType, "must be an Article"
    else
      @articles << article
    end
  end

  def first_article_url
    # articles is an array
      #first element in that array must respond to a URL method
    self.articles.first.url
  end
end
