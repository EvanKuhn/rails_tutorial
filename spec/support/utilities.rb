def page_title(page_name = '')
  base_title = "Ruby on Rails Tutorial Sample App"
  (page_name.empty? ? base_title : base_title + " | #{page_name}")
end

