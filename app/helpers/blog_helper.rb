module BlogHelper
  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :hard_wrap => true, :filter_html => true)
  end
end
