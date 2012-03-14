module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "framework"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo  
    logo = image_tag("rails.png", :alt => "framework", :class => "round") 
  end

end