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

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |ff|
      #render(association.to_s.singularize + "_fields", f: ff)
      render(association.to_s + "_fields", f: ff)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  
end
