# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
  end

  def summary_of(text, lenght = 400)
    truncate(strip_tags(text), lenght)
  end

  def friendly_pluralize(number, singular, plural = nil)
    if number == 1
      "#{number} #{singular}"
    else
      number.to_s + " "+ (plural.nil? ? singular + 's' : plural)
    end
  end
  

  def widget_tag (name = nil, &block)
    haml_tag ".widget" do
      haml_tag ".top"
      haml_tag ".middle" do
        haml_tag :h3, name if name
        haml_concat capture(&block)
      end
      haml_tag ".bottom"
    end
  end
  
  def active_if_now
    "current" if params[:filter].nil? or params[:filter]=="ahora"
  end
  
  def active_if_showtime
    "current" if params[:filter]=="estrenos"
  end
  
  def active_if_recommended
   "current" if params[:filter]=="recomendadas"
  end  
  
  
  
end

