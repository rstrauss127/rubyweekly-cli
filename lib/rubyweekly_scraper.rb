class RubyWeeklyScraper

  attr_accessor :newsletter, :doc

  def initialize(issue_number)
    @newsletter = Newsletter.new
    @newsletter.issue_number = issue_number
    @doc = Nokogiri::HTML(open("https://rubyweekly.com/issues/#{issue_number}"))
  end

end
