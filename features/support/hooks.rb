Before do |scenario|
  start_test_server_in_background
end

After do |scenario|
  	time = Time.new
	Dir.mkdir('report') unless Dir.exist?('report')

	sufix = ('fail' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase

	screenshot_embed(:name => "./report/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}")
    shutdown_test_server
end