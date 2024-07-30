module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Abdullah's Portfolio Website"
    @seo_keywords = "Abdullah Saeed Portfolio"
  end
end
