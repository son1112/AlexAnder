module ApplicationHelper

  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
                                            autolink: true,
                                            space_after_headers: true,
#                                            fence_code_blocks: true,
                                            underline: true,
                                            highlight: true,
                                            tables: true
                                          })
    @markdown.render(content)
  end
  
end
