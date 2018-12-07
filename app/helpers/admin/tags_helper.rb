module Admin::TagsHelper


  def tag_deleteable_button tag

    if tag.in_use? 
      link_to '#' do 
        content_tag(:button ,'Delete', class: 'disable')
      end 
    else
      link_to admin_tag_path(tag ) , method: :delete, data: {confirm: 'Are you sure?'} do 
        content_tag(:button ,'Delete')
      end 
    end   

  end

end
