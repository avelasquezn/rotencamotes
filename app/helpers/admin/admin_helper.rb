module Admin::AdminHelper

  def app_models
    models = []
    Dir.glob( RAILS_ROOT + '/app/models/*' ).each do |f|
      models << File.basename( f ).gsub( /^(.+).rb/, '\1')
    end
    models = models.reject{|i| [].include? i }
    models
  end

  def display_app_models_links(options = {})
    if options[:ul]
      list = ul_tag(app_models)
    else
      list = app_models.map{|item| li_tag(item) }
    end
    list
  end

  def ul_tag(items,options={})
    items_list = items.map{|item| li_tag(item) }.join
    content_tag(:ul,items_list,options)
  end

  def li_tag(item)
        content_tag(:li,link_to("#{item.downcase}".pluralize,url_for(:controller=>"admin/#{item.downcase.pluralize}",:action=>"index")))
  end

end

