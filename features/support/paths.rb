def path_to(page_name)
  case page_name
  when /the homepage/
    root_path
  end
end
