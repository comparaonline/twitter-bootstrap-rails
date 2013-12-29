module TwitterBreadcrumbsHelper
  def render_bootstrap_breadcrumbs(&block)
    content = render :partial => 'twitter-bootstrap/breadcrumbs', :layout => false
    if block_given?
      capture(content, &block)
    else
      content
    end
  end
end
