JSONAPI.configure do |config|
  config.route_format = :underscored_route
  config.json_key_format = :underscored_key

  config.default_page_size = 10
  config.maximum_page_size = 99999

  config.top_level_meta_include_record_count = true
  config.top_level_meta_record_count_key = :record_count

end